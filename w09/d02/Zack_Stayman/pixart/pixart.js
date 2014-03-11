var setColor = document.getElementById("set-color");
var box = document.querySelector("div.brush");
var input = document.getElementById("color-field")
setColor.addEventListener("click", function(){
  box.style.background = input.value;
  input.value = "";
});