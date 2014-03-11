var colorInput = document.getElementById("color-field");
var button = document.querySelector("button");
var form = document.querySelector("form");
var brush = document.querySelector(".brush");

// button.addEventListener("submit", function(e) {


var body = document.querySelector("body");
for (var i = 0; i < 8000; i++) {
  var div = document.createElement("div");
  div.classList.add("square");
  div.style.height = "10px";
  div.style.width = "10px";
  div.style.margin = "0";
  body.appendChild(div);
}

var brush = document.querySelector(".brush");
brush.style.display = "block";
for (var j = 0; j < 3; j++) {
  var div = document.createElement("div");
  div.classList.add("swatch");
  div.classList.add("swatch-"+j);
  div.style.display = "inline-block";
  div.style.height = "100px";
  div.style.width = "100px";
  form.appendChild(div);
}

var swatch = document.querySelector(".swatch");

body.addEventListener("mouseover", function(e) {
  var color = colorInput.value;
  // var color = brush.style.background;

  if (e.target.className === "square") {
    e.target.style.background = color;
  }
});


swatch.addEventListener("click", function(e) {
  input.value = e.target.style.background;
});

var count = 0;

form.addEventListener("submit", function(e) {
  e.preventDefault();
  var swatchColor = colorInput.value;
  brush.style.background = swatchColor;
  var swatchClass = ".swatch-" + (count % 3);
  var divSwatch = document.querySelector(swatchClass);
  divSwatch.style.background = swatchColor;
  count++;
  this.reset();
});

