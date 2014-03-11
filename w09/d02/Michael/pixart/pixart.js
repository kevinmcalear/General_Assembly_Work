//Set Color
//Step 1:  Identify the div

//Step 2:  Write the function
var changeColor = function(eventObject){
  var brush = document.querySelector("div.brush")
  var color = eventObject.target.parentElement.querySelector("#color-field").value
  brush.style.background = color
}

//Step 3:  Write the EventListener
var panel = document.querySelector(".controls")
panel.addEventListener("click",changeColor)