var bucketRoot = "https://test-results.dartcode.org/";
var results = [];
var outstandingRequests = 0;
var queryString = window.location.search.substring(1);

if (queryString && queryString.indexOf("/") !== -1) {
	getXml(bucketRoot + "?prefix=" + escape(queryString), handleFileListing, console.error);
} else {
	// TODO: Display list
}

function getXml(url, success, error) {
	var request = new XMLHttpRequest();
	request.open("GET", url);
	request.onerror = error;
	request.onload = function () {
		if (this.status >= 200 && this.status < 400) {
			success(this.responseXML);
		} else {
			error(this.statusText);
		}
	};
	request.send();
}

function handleFileListing(xml) {
	var files = [];
	var matchedFiles = 0;
	for (var file of xml.querySelectorAll("Contents")) {
		var path = file.querySelector("Key").textContent;
		var pathSegments = path.split("/");
		var testSegments = pathSegments[3].substring(0, pathSegments[3].lastIndexOf(".")).split("_");

		var os = pathSegments[2];
		var suite = testSegments.slice(0, testSegments.length - 2).join(" ");
		var dartVersion = testSegments[testSegments.length - 2];
		var codeVersion = testSegments[testSegments.length - 1];

		matchedFiles++;
		loadResults(bucketRoot + path, suite, dartVersion, codeVersion, os);
	}

	if (matchedFiles === 0) {
		// TODO: Handle no matched files (this is an error, since no filter was handled earlier).
	}
}

function loadResults(path, suite, dartVersion, codeVersion, os) {
	outstandingRequests++;
	getXml(path, function (xml) {
		handleTestResults(suite, dartVersion, codeVersion, os, xml);
		outstandingRequests--;
		if (outstandingRequests == 0) {
			updateResults();
		}
	}, console.error);
}

function handleTestResults(suite, dartVersion, codeVersion, os, xml) {
	var suiteResults = results.find((r) => r.suite == suite);
	if (!suiteResults) {
		suiteResults = { suite: suite, testClasses: [] };
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
			failure: test.querySelector("failure") ? test.querySelector("failure").textContent : undefined
		};
	}
}

function updateResults() {
	var table = document.querySelector("#test-results");
	var tbody = table.querySelector("tbody");
	var totalCols = 18;
	for (var suite of results) {
		addRow(tbody, 0, totalCols, suite.suite, "suite");
		for (var testClass of suite.testClasses) {
			addRow(tbody, 1, totalCols - 1, testClass.className);
			for (var test of testClass.tests) {
				var row = addRow(tbody, 2, 1, test.testName);
				for (var codeVersion of ["stable", "insiders"]) {
					for (var dartVersion of ["stable", "dev"]) {
						// Don't show dev/dev for simplicity.
						if (codeVersion == "insiders" && dartVersion == "dev")
							continue;
						row.appendChild(document.createElement("td"));
						for (var os of ["win", "osx", "linux"]) {
							var id = dartVersion + "_" + codeVersion + "_" + os;
							var result = test[id];
							var resultClassName = result ? (result.failure ? "fail" : "pass") : "unknown";
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
	document.getElementById("test-results-loading").classList.add("hide");
	table.classList.remove("hide");
}

function addRow(table, pad, cols, label, className) {
	var row = table.appendChild(document.createElement("tr"));
	row.className = className;
	for (var i = 0; i < pad; i++)
		row.appendChild(document.createElement("td"));

	var cell = row.appendChild(document.createElement("td"));
	cell.textContent = label;
	cell.colSpan = cols;

	table.appendChild(row);
	return row;
}

/*
	[
		{
			suite: dart_only
			tests: [
				{
					class: "dart_hover_provider",
					name: "returns expected information for a void returning method",
					results: {
						stable_stable: {
							win: {
								time: 1.2,
								result: pass,
								error: xxx
							},
							linux: {
								time: 1.2,
								result: pass,
								error: xxx
							},
						},
						stable_unstable: {
							win: {
								time: 1.2,
								result: pass,
								error: xxx
							},
							linux: {
								time: 1.2,
								result: pass,
								error: xxx
							},
						}
					}
				}
			]
		}
	]
*/
