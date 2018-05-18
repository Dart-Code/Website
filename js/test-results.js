var bucketRoot = "https://test-results.dartcode.org/";
var githubApiRoot = "https://api.github.com/repos/Dart-Code/Dart-Code/";
var results = [];
var outstandingRequests = 0;
var queryString = window.location.search.substring(1);

if (queryString && queryString.indexOf("/") !== -1) {
	getXml(bucketRoot + "?prefix=" + escape(queryString), handleFileListing, console.error);
} else {
	getJson(githubApiRoot + "branches", handleBranchList, function (e) {
		hideLoading();
		document.querySelector("main").appendChild(document.createTextNode("Failed to load branches. Have you blown your GH API quota? :("));
		console.error(e);
	});
}

function get(url, success, error) {
	var request = new XMLHttpRequest();
	request.open("GET", url);
	request.onerror = error;
	request.onload = function () {
		if (this.status >= 200 && this.status < 400) {
			success(this);
		} else {
			error(this.statusText);
		}
	};
	request.send();
}

function getXml(url, success, error) {
	get(url, function (request) { success(request.responseXML); }, error);
}

function getJson(url, success, error) {
	get(url, function (request) { success(JSON.parse(request.response)); }, error);
}

function handleFileListing(xml) {
	var files = [];
	var matchedFiles = 0;
	for (var file of xml.querySelectorAll("Contents")) {
		var size = parseInt(file.querySelector("Size").textContent, 10);
		if (size === 0)
			continue;
		var path = file.querySelector("Key").textContent;
		var pathSegments = path.split("/");
		var branch = pathSegments[0];
		var hash = pathSegments[1];
		var os = pathSegments[2];
		var testSegments = pathSegments[3].substring(0, pathSegments[3].lastIndexOf(".")).split("_");

		var suite = testSegments.slice(0, testSegments.length - 2).join(" ");
		var dartVersion = testSegments[testSegments.length - 2];
		var codeVersion = testSegments[testSegments.length - 1];

		matchedFiles++;
		loadResults(path, branch, hash, os, suite, dartVersion, codeVersion, os);
	}

	if (matchedFiles === 0) {
		// TODO: Handle no matched files (this is an error, since no filter was handled earlier).
	}
}

function loadResults(path, branch, hash, os, suite, dartVersion, codeVersion, os) {
	outstandingRequests++;
	getXml(bucketRoot + path, function (xml) {
		handleTestResults(branch, hash, os, suite, dartVersion, codeVersion, xml);
		outstandingRequests--;
		if (outstandingRequests == 0) {
			updateResults();
		}
	}, console.error);
}

function handleTestResults(branch, hash, os, suite, dartVersion, codeVersion, xml) {
	var suiteResults = results.find((r) => r.suite == suite);
	if (!suiteResults) {
		suiteResults = { suite: suite, branch: branch, hash: hash, testClasses: [] };
		results.push(suiteResults);
	}

	for (var test of xml.querySelectorAll("testcase")) {
		var className = test.getAttribute("classname");
		var classResults = suiteResults.testClasses.find((r) => r.className == className);
		if (!classResults) {
			classResults = { className: className, tests: [] };
			suiteResults.testClasses.push(classResults);
		}

		var testName = test.getAttribute("name");
		var testResults = classResults.tests.find((r) => r.testName == testName);
		if (!testResults) {
			testResults = { testName: testName };
			classResults.tests.push(testResults);
		}

		testResults[dartVersion + "_" + codeVersion + "_" + os] = {
			time: test.getAttribute("time"),
			failure: test.querySelector("failure") ? test.querySelector("failure").textContent || true : undefined,
			skipped: test.querySelector("skipped") ? test.querySelector("skipped").textContent || true : undefined
		};
	}
}

function updateResults() {
	var table = document.querySelector("#test-results");
	var tbody = table.querySelector("tbody");
	var totalCols = 18;
	for (var suite of results) {
		var row = addRow(tbody, 0, 3, suite.suite, "suite");
		for (var codeVersion of ["stable", "insiders"]) {
			for (var dartVersion of ["stable", "dev"]) {
				// Don't show dev/dev for simplicity.
				if (codeVersion == "insiders" && dartVersion == "dev")
					continue;
				row.appendChild(document.createElement("td"));
				for (var os of ["win", "osx", "linux"]) {
					// TODO: Finish... We have multiple files here (types of files, but also multiple files for multiple runs)..
					// Maybe link to a list of files using the same API we use above?
					// TODO: Why is icon rotated?
					// var a = row.appendChild(document.createElement("td")).appendChild(document.createElement("a"));
					// a.href = bucketRoot + ["logs", suite.branch, suite.hash, os, ".dart_code_logs", suite.name].join("/");
					// var img = a.appendChild(document.createElement("img"));
					// img.className = "x";
					// img.src = "/images/log.svg";
				}
				row.appendChild(document.createElement("td"));
			}
		}
		for (var testClass of suite.testClasses) {
			addRow(tbody, 1, totalCols - 1, testClass.className);
			for (var test of testClass.tests) {
				var row = addRow(tbody, 2, 1, test.testName, undefined, "test-name");
				for (var codeVersion of ["stable", "insiders"]) {
					for (var dartVersion of ["stable", "dev"]) {
						// Don't show dev/dev for simplicity.
						// if (codeVersion == "insiders" && dartVersion == "dev")
						// 	continue;
						row.appendChild(document.createElement("td"));
						for (var os of ["win", "osx", "linux"]) {
							var id = dartVersion + "_" + codeVersion + "_" + os;
							var result = test[id];
							var resultClassName = "unknown";
							if (result && result.failure)
								resultClassName = "fail";
							else if (result && result.skipped)
								resultClassName = "skipped";
							else if (result)
								resultClassName = "pass";
							row.appendChild(document.createElement("td")).className = resultClassName;

							// Add to column header.
							document.getElementById(id).classList.add(resultClassName);
						}
						row.appendChild(document.createElement("td"));
					}
				}
			}
		}
	}
	hideLoading();
	table.classList.remove("hide");
}

function addRow(table, pad, cols, label, rowClassName, cellClassName) {
	var row = table.appendChild(document.createElement("tr"));
	row.className = rowClassName;
	for (var i = 0; i < pad; i++)
		row.appendChild(document.createElement("td"));

	var cell = row.appendChild(document.createElement("td"));
	cell.textContent = label;
	cell.colSpan = cols;
	cell.className = cellClassName;

	table.appendChild(row);
	return row;
}

function hideLoading() {
	document.getElementById("test-results-loading").classList.add("hide");
}

function handleBranchList(branches) {
	let list = document.getElementById("test-branches");
	let listStale = document.getElementById("test-branches-stale");
	for (let branch of branches) {
		outstandingRequests++;
		let branchName = branch.name;
		let hash = branch.commit.sha;

		let li = list.appendChild(document.createElement("li"));

		let badges = li.appendChild(document.createElement("div"));
		badges.classList.add("badges");
		badges.appendChild(document.createElement("img")).src = "https://img.shields.io/travis/Dart-Code/Dart-Code/" + escape(branchName) + ".svg?label=mac+%26+linux";
		badges.appendChild(document.createElement("img")).src = "https://img.shields.io/appveyor/ci/DanTup/Dart-Code/" + escape(branchName) + ".svg?label=windows&amp;logoWidth=-1";

		getXml(bucketRoot + "?max-keys=1&prefix=" + escape(branchName + "/" + hash), function (xml) {
			var hasResults = !!xml.querySelector("Contents");

			// The first result will show the list.
			hideLoading();
			list.classList.remove("hide");

			if (hasResults) {
				var a = li.appendChild(document.createElement("a"));
				a.textContent = branchName;
				a.href = "?" + branchName + "/" + hash;
			} else {
				li.appendChild(document.createTextNode(branchName));
			}

			function addDate(date) {
				var span = li.appendChild(document.createElement("span"));
				var daysAgo = Math.floor(((new Date()).getTime() - date.getTime()) / (1000 * 60 * 60 * 24));
				if (daysAgo == 0) {
					daysAgo = "today";
					span.classList.add("today");
				} else if (daysAgo == 1)
					daysAgo = "yesterday";
				else
					span.classList.add("days-ago");
				span.textContent = daysAgo;

				if (daysAgo > 14) {
					document.getElementById("stale").classList.remove("hide");
					listStale.appendChild(li);
				}
			}

			// If we have rest results, use their date (to avoid burning GH API).
			if (hasResults) {
				addDate(new Date(Date.parse(xml.querySelector("Contents LastModified").textContent)));
			} else { // Otherwise, try GH.
				getJson(branch.commit.url, function (json) {
					addDate(new Date(Date.parse(json.commit.committer.date)));
				}, console.error);
			}
		}, console.error);
	}
}
