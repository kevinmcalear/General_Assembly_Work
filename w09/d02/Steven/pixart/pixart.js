var button = document.querySelector("button");
var input = document.getElementById("color-field");
var brush = document.querySelector("div.brush");

button.addEventListener("click", function(){
  brush.style.background = input.value;
});