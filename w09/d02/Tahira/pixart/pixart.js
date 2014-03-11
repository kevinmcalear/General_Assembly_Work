var form = document.querySelector("#color-setter");
var brush = document.querySelector(".brush");
var body = document.querySelector("body");

var changeColor = function(eventObject) {
  eventObject.preventDefault();
  var color = form.elements["color"].value;
  console.log(color);
  brush.style.background = color;
};

for(var i=0; i<20; i++){
  square = document.createElement("div");
  square.class = "square";
  body.insertAdjacentElement("beforeend", square);
}

form.addEventListener("submit", changeColor);

