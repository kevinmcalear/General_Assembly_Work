// Find elements
var button = document.getElementById("set-color");
var field = document.getElementById("color-field");
var brush = document.querySelector(".brush");
var form = document.getElementById("form");
var body = document.querySelector("body");  


// Build functions
var changeColor = function(e) {
  e.preventDefault();
  brush.style.backgroundColor = field.value;
};

var changeToGreen = function() {
  this.style.backgroundColor = field.value;
};

var createDivs = function() {
  for(var i = 0; i < 8000; i++) {
    var div = document.createElement("div");
    div.className = "square";
    body.appendChild(div);
    div.addEventListener("mouseover", changeToGreen);
  }
};
createDivs();

var div = document.querySelector(".square");



// Add listeners
button.addEventListener("click", changeColor);
form.addEventListener("submit", changeColor);






