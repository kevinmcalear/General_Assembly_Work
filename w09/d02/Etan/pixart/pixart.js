
var setColorButon = document.querySelector("#set-color");

var colorField = document.querySelector("#color-field");

var coloredSquare = document.querySelector(".brush");


setColorButon.addEventListener("click", function() {
	coloredSquare.style.backgroundColor=colorField.value;
})

colorField.addEventListener("keypress", function(e) {
	if(e.keyCode===13) {
	coloredSquare.style.backgroundColor=colorField.value;}
})




