var newColorInput = document.querySelector("#color-field");
var setColorButton = document.querySelector("#set-color");
var brush = document.querySelector(".brush");

setColorButton.addEventListener("click", function(){
    brush.style.backgroundColor = newColorInput.value;
});