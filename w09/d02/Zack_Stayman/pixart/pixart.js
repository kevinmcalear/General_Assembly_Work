var setColor = document.getElementById("set-color");
var box = document.querySelector("div.brush");
var input = document.getElementById("color-field");
var colorForm = document.getElementById("color-form");

setColor.addEventListener("click", function(e){
  e.preventDefault();
  box.style.background = input.value;
  input.value = "";
});

document.body.addEventListener("load", function(){
  for(var i = )
});