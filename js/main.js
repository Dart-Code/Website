function whenReady(fn) {
	if (document.attachEvent ? document.readyState === "complete" : document.readyState !== "loading") {
		fn();
	} else {
		document.addEventListener("DOMContentLoaded", fn);
	}
}

whenReady(function () {
	var elements = document.querySelector("main").querySelectorAll("h1[id],h2[id],h3[id]");
	Array.prototype.forEach.call(elements, function (el, i) {
		var a = document.createElement("a");
		a.href = '#' + el.id;
		a.textContent = '#';
		el.appendChild(a);
	});
});
