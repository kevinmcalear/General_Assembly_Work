//Create 20 divs of Square Class
var panel = document.querySelector(".controls")

for(var i=0; i<20; i++){
  var panel = document.querySelector(".controls")
  var squareDiv = document.createElement("div")
  squareDiv.className = "square"
  panel.insertAdjacentElement("afterend",squareDiv)

};


//Step 1:  Identify the Div
var body = document.querySelector("body")
//Step 2:  Write the Function
var changeGreen = function(eventObject){
  var divChange = eventObject.target
  divChange.style.background = "green"

}
//Step 3:  Write the event listener. 
body.addEventListener("click",changeGreen)


//Set Color
//Step 1:  Identify the div
var input = document.querySelector("input")
var form = document.querySelector("form")
//Step 2:  Write the function
var changeColor = function(eventObject){
  eventObject.preventDefault();
  var brush = document.querySelector("div.brush")
  var color = eventObject.target.parentElement.querySelector("#color-field").value
  // var colorBox = document.createElement("div")
  // var form = document.querySelector("form")
  // colorBox.className = "brush"
  // colorBox.style.background = color
  // form.insertAdjacentElement("afterend",colorBox)
  brush.style.background = color

  input.value = ""
}

//Step 3:  Write the EventListener
var panel = document.querySelector(".controls")
panel.addEventListener("submit",changeColor)



