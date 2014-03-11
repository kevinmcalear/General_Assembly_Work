var form = document.querySelector("form");
var colorBox = document.querySelector(".brush");
var newColor = document.querySelector("#color-field");

var setColor = function(e) {
  e.preventDefault();
  colorBox.style.backgroundColor = newColor.value;
}

form.addEventListener("submit", setColor);