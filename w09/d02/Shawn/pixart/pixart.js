var colorInput = document.querySelector("input#color-field");
var setColor = document.querySelector("button#set-color");
var brush = document.querySelector("div.brush");


setColor.addEventListener("click", function() {
  brush.style.background = colorInput.value;
})

colorInput.addEventListener("keypress", function(e) {
  if(e.keyCode === 13) {
    brush.style.background = colorInput.value;
    colorInput.value = "";
  }
});


