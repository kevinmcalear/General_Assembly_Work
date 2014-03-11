var colorInput = document.querySelector("input#color-field");
var setColor = document.querySelector("button#set-color");
var brush = document.querySelector("div.brush");
var body = document.querySelector("body");


setColor.addEventListener("click", function() {
  brush.style.background = colorInput.value;
})

colorInput.addEventListener("keypress", function(e) {
  if(e.keyCode === 13) {
    brush.style.background = colorInput.value;
    colorInput.value = "";
  }
});

for(var i = 0; i < 20; i++) {
  var div = document.createElement("div");
  div.className = "square";
  body.appendChild(div);
}

