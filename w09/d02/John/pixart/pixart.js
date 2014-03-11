colorInput = document.getElementById("color-field");
button = document.querySelector("button");
form = document.querySelector("form");
brush = document.querySelector(".brush");

// button.addEventListener("submit", function(e) {
form.addEventListener("submit", function(e) {
  e.preventDefault();
  var color = colorInput.value;
  brush.style.background = color;
  this.reset();
});