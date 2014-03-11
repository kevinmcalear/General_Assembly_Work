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
  for(i = 0; i <= 8000; i++){
    var colorPixel = document.createElement("div");
    colorPixel.classList.add("square");
    colorPixel.style.width = "10px";
    colorPixel.style.height = "10px";
    colorPixel.style.margin = "0";
    body.appendChild(colorPixel);
  }
};



makeDivs();

body.addEventListener("mouseover", function(eventObject) {
  if (eventObject.target.className === "square") {
    eventObject.target.style.backgroundColor = input.value;
  }
});

form.addEventListener("submit", changeColor);