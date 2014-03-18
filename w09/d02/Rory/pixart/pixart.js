var colorButton = document.querySelector("#set-color");
var colorInput = document.querySelector("input");
var colorField = document.querySelector(".brush");
var body = document.querySelector("body");

colorButton.addEventListener("click", function(e){
  e.preventDefault();
  colorField.style.background = colorInput.value;
});

//colorButton.addEventListener("keydown", function(e){
  //e.target;
  //if(e.keyCode === 13){
    //colorField.style.background = input.value;
  //}
//});

for(var i=0; i<8000; i++){
  var div = document.createElement("div");
  div.className = "square";
  document.body.appendChild(div);
};

var squares = document.querySelectorAll("div.square");

for(var i = 0; i<squares.length;i++){
  squares[i].addEventListener("click", function(){
  console.log(this);
  this.style.background = colorField.value;
  })
}