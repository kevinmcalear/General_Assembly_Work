var button = document.querySelector("#set-color");
var input = document.querySelector("#color-field");
var colorPixel = document.querySelector(".brush");


var changeColor = function(){
  colorPixel.style.backgroundColor = input.value;
};



button.addEventListener("click", changeColor);