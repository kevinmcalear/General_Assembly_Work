//###Commit 1
// * When I click the "Set Color" button, it should change the color of the "brush" box to the color I specify in the input field.

var inputColor = document.getElementById("color-field")
var colorBox = document.querySelector(".brush")
var submitButton = document.getElementById("set-color")

function changeColor(){
  var inputColor = document.getElementById("color-field").value;
  console.log(inputColor) 
  colorBox.style.background = inputColor;
}

submitButton.addEventListener("click", changeColor);

// ###Commit 2
// * The same thing should happen when I press the enter key from inside the input field

inputColor.addEventListener("keypress", function(e){
  if(e.keyCode === 13){
    changeColor();
  }
});

// ###Commit 3

// * Using JavaScript, create 20 divs of the "square" class and append them to the body

for(var i = 0; i <20; i++) {
  var div = document.createElement("div");
  div.className = "square";
  document.body.appendChild(div);
  };
// ###Commit 4

// * Add functionality so that when I click on each "square", it changes the color of that individual square to "green"

// var squares = document.querySelectorAll("div.square");
// for (var i = 0; i < squares.length; i++) {
//   squares[i].addEventListener("click", function(e) {
//     e.target.style.background = "green";
//     //or this.style.background = "green";
//   })
// }
// ###Commit 5

// * Modify your code so that when I click on each "square", it changes to the color I set using my input instead of "green" every time.


var squares = document.querySelectorAll("div.square");
for (var i = 0; i < squares.length; i++) {
  squares[i].addEventListener("click", function(e) {
    e.target.style.background = colorField.style.backgroundColor;
  })
}

// ###Commit 6

// * Modify the CSS so that the "square" class has a height and width of 10px and a margin of 0.
// * Modify your code so that you are creating 8000 divs instead of 20.
// * Change the event that changes your box colors from 'click' to 'mouseover'
// * Paint a picture!
