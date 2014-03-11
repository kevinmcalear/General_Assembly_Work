// Find elements
var button = document.getElementById("set-color");
var field = document.getElementById("color-field");
var brush = document.querySelector(".brush");


// Build functions
var changeColor = function(e) {
  e.preventDefault();
  brush.style.backgroundColor = field.value;

};




// Add listeners
button.addEventListener("click", changeColor);