var brush = document.querySelector("div.brush");
var input = document.querySelector("input#color-field");
var button = document.querySelector("button#set-color");
var body = document.querySelector("body");

for (var i = 0; i < 3; ++i){
  var div = document.createElement("div");
  div.classList.add("palette");
  input.insertAdjacentElement("beforebegin", div); 
};

var palette = document.querySelectorAll(".palette");
var count = 0;

button.addEventListener("click", function(e){
  e.preventDefault();
  brush.style.background = input.value;
  if(count === 3) {
    count = 0;
  };
  palette[count].style.background = input.value;
  ++ count;

});

for (var i = 0; i < 8000; ++i){
  var div = document.createElement("div");
  div.classList.add("square");
  div.addEventListener("mouseover", function(){
    this.style.background = input.value
  });
  body.appendChild(div);
};



