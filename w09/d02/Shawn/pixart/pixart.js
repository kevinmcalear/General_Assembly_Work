var colorInput = document.querySelector("input#color-field");
var setColor = document.querySelector("button#set-color");
var brush = document.querySelector("div.brush");
var body = document.querySelector("body");
// var squares = document.querySelectorAll("div.square");

setColor.addEventListener("click", function() {
  brush.style.background = colorInput.value;
})

colorInput.addEventListener("keypress", function(e) {
  if(e.keyCode === 13) {
    brush.style.background = colorInput.value;
    colorInput.value = "";
  }
});

for(var i = 0; i < 8000; i++) {
  var div = document.createElement("div");
  div.className = "square";
  body.appendChild(div);
}

var squares = document.querySelectorAll("div.square");

for(var i = 0; i < squares.length; i ++) {
  
  squares[i].addEventListener("mouseover", function(e) {
    e.target.style.background = colorInput.value;})
  squares[i].style.height = 10;
  squares[i].style.margin = 0;
}

// * Modify the CSS so that the "square" class has a height and width of 10px and a margin of 0.
// * Modify your code so that you are creating 8000 divs instead of 20.
// * Change the event that changes your box colors from 'click' to 'mouseover'
// * Paint a picture!
