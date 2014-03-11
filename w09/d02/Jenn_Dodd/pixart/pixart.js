var button = document.querySelector("#set-color");
var input = document.querySelector("#color-field");
var form = document.querySelector("#color-picker");
var colorPixel = document.querySelector(".brush");


var changeColor = function(eventObject){
  eventObject.preventDefault();
  colorPixel.style.backgroundColor = input.value;
};



form.addEventListener("submit", changeColor);