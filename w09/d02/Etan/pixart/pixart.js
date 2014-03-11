
var setColorButon = document.querySelector("#set-color");

var colorField = document.querySelector("#color-field");

var coloredSquare = document.querySelector(".brush");

setColorButon.addEventListener("click", function() {
	coloredSquare.style.backgroundColor=colorField.value;
})