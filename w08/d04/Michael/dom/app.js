console.log("YO");

var colors = ["red", "blue", "green"]

list = document.createElement("ul");
h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend",list);

for (var i = 0; i < colors.length; i++){
  // Step 1: Create the Element
  li = document.createElement("li");  
  // Step 2: Populate the Element
  li.innerText = "I Love " + colors[i];
  // Step 3: Style the Element
  li.style.color = colors[i];
  // Step 4: Place the Element
  list.insertAdjacentElement("beforeend",li);
}; 

// Example 1: 
// var button = document.querySelector("button")
// button.addEventListener("click", function() {
//   console.log("I HAVE BEEN CLICKED!");
// });

// Example 2: 
// var clickFunc = function() {
//   console.log("I HAVE BEEN CLICKED!")
// };

// var button = document.querySelector("button")
// button.addEventListener("click", clickFunc);

var clickFunc = function() {
    //Step 1:  Select random number (with color length as max)
    var num = Math.floor(Math.random() * colors.length);
    //Step 2:  Select Background
    var background = document.querySelector("body")
    //Step 3:  Set random number to color background
    background.style.background = colors[num]
};

var buttonCount = 0; 
var clickCount = function() {
  buttonCount += 1;
  if(buttonCount ===10){
    this.disabled = true
    }
}; 

//Text Input, Rendered on the page. 
var renderInput = function(){
  //Step 1:  Create New Div
  var inputDiv = document.createElement("div")
  //Step 2:  Add Div to Page
  this.insertAdjacentElement("afterend",inputDiv);
  //Step 3:  Add a paragraph to the Div
  var paragraph = document.createElement("p")
  inputDiv.insertAdjacentElement("beforeend",paragraph);
  //Step 3:  Add Inner Text to Div
  inputDiv.innerText = this.value  
};


var button = document.querySelector("button")
button.addEventListener("click", clickFunc);
button.addEventListener("click", clickCount);

var input = document.querySelector("input");
input.addEventListener("keypress",renderInput);
