var inputField = document.querySelector("input#color-field");
var setColorButton = document.querySelector("button#set-color");
var brush = document.querySelector("div.brush");
var bodyVar = document.querySelector("body");

setColorButton.addEventListener("click", function(){
	brush.style.background = inputField.value;
});

inputField.addEventListener("keypress", function(event){
	if(event.keyCode === 13){
		brush.style.background = inputField.value;
	}
});

var i = 0;
while(i < 20){
	var div = document.createElement("div");
	div.className = "square";
	bodyVar.appendChild(div);
	// var squares = document.querySelector("div.square");
	// square_i.addEventListener("click", function(){
	// square_i.style.background = "green";
	// 	})
	i++;
};

var squares = document.querySelectorAll("div.square");

for(var x = 0; x < 20; x++){
	squares[x].addEventListener("click", function(event){
	event.target.style.background = "green"; } )
};