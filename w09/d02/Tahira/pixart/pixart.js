var form = document.querySelector("#color-setter");
var brush = document.querySelector(".brush");
var body = document.querySelector("body");

color = "#1B4370";

var changeColor = function(eventObject) {
  eventObject.preventDefault();
  color = form.elements["color"].value;
  console.log(color);
  brush.style.background = color;
};

var changeColorToBrush = function(eventObject) {
  this.style.background = color;
};

for(var i=0; i<20; i++){
  square = document.createElement("div");
  square.classList.add("square");
  body.insertAdjacentElement("beforeend", square);
  square.addEventListener("click", changeColorToBrush);
};

form.addEventListener("submit", changeColor);

