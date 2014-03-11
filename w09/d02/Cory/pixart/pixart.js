// Find elements
var button = document.getElementById("set-color");
var field = document.getElementById("color-field");
var brush = document.querySelector(".brush");
var form = document.getElementById("form");


// Build functions
var changeColor = function(e) {
  e.preventDefault();
  brush.style.backgroundColor = field.value;
};




// Add listeners
button.addEventListener("click", changeColor);
form.addEventListener("submit", changeColor);