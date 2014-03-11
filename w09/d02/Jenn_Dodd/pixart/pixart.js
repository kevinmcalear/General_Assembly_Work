var button = document.querySelector("#set-color");
var input = document.querySelector("#color-field");
var form = document.querySelector("#color-picker");
var currentBrush = document.querySelector("#current");
var brushBox1 = document.querySelector("#one");
var brushBox2 = document.querySelector("#two");
var brushBox3 = document.querySelector("#three");
var body = document.querySelector("body");
var ul = document.querySelector("ul");


var lastColor = 0;

var changeColor = function(eventObject){
  eventObject.preventDefault();
  currentBrush.style.backgroundColor = input.value;
  if (lastColor === 3){
    lastColor = 0;
  }
  lastColor += 1;
  if (lastColor === 1) {
    brushBox1.style.backgroundColor = input.value;
  } else if (lastColor === 2) {
    brushBox2.style.backgroundColor = input.value;
  } else {
    brushBox3.style.backgroundColor = input.value;
  };
  

};


for(var i = 0; i <= 8000; i++){
  var colorPixel = document.createElement("div");
  colorPixel.classList.add("square");
  colorPixel.style.width = "10px";
  colorPixel.style.height = "10px";
  colorPixel.style.margin = "0";
  body.appendChild(colorPixel);
}


body.addEventListener("mouseover", function(eventObject) {
  if (eventObject.target.className === "square") {
    eventObject.target.style.backgroundColor = input.value;
  }
});

ul.addEventListener("click", function(eventObject) {
  if (eventObject.target.className === "swatch") {
    input.value = eventObject.target.style.backgroundColor;
    currentBrush.style.backgroundColor = input.value;
  }
});

form.addEventListener("submit", changeColor);