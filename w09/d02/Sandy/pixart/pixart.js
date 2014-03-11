// commit 1

var inputColor = document.getElementById("color-field")

// var square = document.getElementsByClassName("brush")
var colorSquareBox = document.querySelector(".brush")

var submitButton = document.getElementById("set-color")

function changeColor(){
  var inputColor = document.getElementById("color-field").value;
  console.log(inputColor) 
  colorSquareBox.style.background = inputColor;
}

// submitButton.onclick = changeColor

submitButton.addEventListener("click", changeColor);

//commit 2

inputColor.addEventListener("keypress", function(e){
  if(e.keyCode === 13){
    changeColor();
  }
});

//commit 3 create 20 divs of the "square" class and append them to the body

for(var i = 0; i < 20; i++){
  var div = document.createElement("div");
    div.className = "square";
    document.body.appendChild(div);
};

// //commit 4 

// var squares = document.querySelector("square");

// for( var i = 0; i < squares.length; i++){
//   squares[i].addEventListener("click", function() {
//     this.style.background = "green";
//   });
// }

// //commit 5

