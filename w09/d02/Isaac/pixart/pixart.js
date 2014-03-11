var colorField = document.querySelector("div.brush");
var colorInput = document.querySelector("#color-field");
var setColor = document.querySelector("#set-color")
setColor.addEventListener("click", function(eventObject){
  eventObject.preventDefault();
  colorField.style.background = colorInput.value;
});


for(var i=0;i<8000;i++){
  var div = document.createElement("div");
  div.className = "square";
  document.body.appendChild(div);
};

var squares = document.querySelectorAll("div.square");

for(var i=0;i<squares.length;i++){
  squares[i].addEventListener("mouseover", function(e){
    e.target.style.background = colorInput.value;
  })
}









