var button = document.querySelector("#set-color");
var input = document.querySelector("#color-field");
var form = document.querySelector("#color-picker");
var brushBox = document.querySelector(".brush");
var body = document.querySelector("body");




var changeColor = function(eventObject){
  eventObject.preventDefault();
  brushBox.style.backgroundColor = input.value;
};

var makeDivs = function(){
  for(i = 0; i <= 20; i++){
    var colorPixel = document.createElement("div");
    colorPixel.classList.add("square");
    body.appendChild(colorPixel);
  }
};

makeDivs();

form.addEventListener("submit", changeColor);