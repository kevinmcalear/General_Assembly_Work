var newColorInput = document.querySelector("#color-field");
var setColorButton = document.querySelector("#set-color");
var brush = document.querySelector(".brush");
var enterColor = document.querySelector("enter-color");
var body = document.querySelector("body");

setColorButton.addEventListener("click", function(){
    brush.style.backgroundColor = newColorInput.value;
});

newColorInput.addEventListener("keypress", function(e){
  if(e.keyCode == 13 ){
    brush.style.backgroundColor = newColorInput.value;
  };
});

for(i = 0; i < 8000; i++){
  var square = document.createElement("div");
  square.className += "square";
  document.body.appendChild(square);
};

square.addEventListener("click", function(){
  square.style.backgroundColor = "green";
});

function changeColor(e){
  if(e.target.className == "square"){
    e.target.style.backgroundColor = newColorInput.value;
  };
};
body.addEventListener('mouseover', changeColor);