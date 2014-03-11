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


var body = document.querySelector("body");
for (var i = 0; i < 20; i++) {
  var div = document.createElement("div");
  div.classList.add("square");
  body.appendChild(div);
}