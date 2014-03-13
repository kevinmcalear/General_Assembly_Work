var form = document.querySelector("form");
var colorField = document.querySelector(".brush");
var newColor = document.querySelector("#color-field");
var body = document.querySelector("body");

for (var i = 0; i < 8000; i++) {
  var div = document.createElement("div");
  div.classList.add("square");
  body.appendChild(div);
}

colorDivs = document.querySelectorAll(".square");

for (var i = 0; i < colorDivs.length; i++) {
  colorDivs[i].addEventListener("mouseover", function() {
    this.style.background = newColor.value || "#1B4370";
  });
}

for (var i = 0; i < 3; i++) {
  var colorSwatches = document.createElement("div");
  colorSwatches.classList.add("swatches");
  colorSwatches.style.display = "inline-block"
  colorSwatches.style.margin = "5px";
  colorField.insertAdjacentElement("afterEnd", colorSwatches);

  colorSwatches.addEventListener("click", function() {
    this.style.background = colorField.style.backgroundColor;
  });
}

var setColor = function(e) {
  e.preventDefault();
  colorField.style.backgroundColor = newColor.value;
}

var setBrush = function() {
  colorField.style.backgroundColor = colorSwatches.style.backgroundColor;
}

form.addEventListener("submit", setColor);
colorField.addEventListener("click", setBrush);