var inputField = document.querySelector("input#color-field");
var setColorButton = document.querySelector("button#set-color");
var brush = document.querySelector("div.brush");

setColorButton.addEventListener("click", function(){
	brush.style.background = inputField.value;
});

inputField.addEventListener("keypress", function(event){
	if(event.keyCode === 13){
		brush.style.background = inputField.value;
	}
});