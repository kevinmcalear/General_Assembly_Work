var form = document.querySelector("#color-setter");
var brush = document.querySelector(".brush");

var changeColor = function(eventObject) {
  eventObject.preventDefault();
  var color = form.elements["color"].value;
  console.log(color);
  brush.style.background = color;
};


form.addEventListener("submit", changeColor);

