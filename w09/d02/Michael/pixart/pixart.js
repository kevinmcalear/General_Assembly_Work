//Set Color
//Step 1:  Identify the div
var input = document.querySelector("input")
var form = document.querySelector("form")
//Step 2:  Write the function
var changeColor = function(eventObject){
  eventObject.preventDefault();
  var brush = document.querySelector("div.brush")
  var color = eventObject.target.parentElement.querySelector("#color-field").value
  var colorBox = document.createElement("div")
  var form = document.querySelector("form")

  colorBox.className = "brush"
  colorBox.style.background = color
  form.insertAdjacentElement("afterend",colorBox)
  brush.style.background = color

  input.value = ""
}

//Step 3:  Write the EventListener
var panel = document.querySelector(".controls")
panel.addEventListener("submit",changeColor)



