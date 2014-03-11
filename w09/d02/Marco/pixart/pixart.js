var setColorButton = document.querySelector("button");
var colorBox = document.querySelector(".brush");
var newColor = document.querySelector("#color-field");

var setColor = function() {
  colorBox.style.backgroundColor = newColor.value;
}

setColorButton.addEventListener("click", setColor);