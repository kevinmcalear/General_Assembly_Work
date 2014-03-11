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

submitButton.onclick = changeColor

