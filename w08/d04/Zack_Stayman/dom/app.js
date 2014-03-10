console.log("YO");

// define colors
var array = ["red", "blue", "green"]

// define where to start
var button = document.querySelector("button");

// define the list start
var ul = document.createElement("ul");
// insert the list into the DOM
button.insertAdjacentElement("afterend", ul);

var input = document.querySelector("input");
var textbox = document.querySelector("div");

// iterate over each color
array.forEach(function(color){
  // define an element that each item will use
  var li = document.createElement("li");

  // define the content of the element
  li.innerText = "I like " + color;
  li.style.color = color;
  // insert the element into the list
  ul.appendChild(li);
});

var clickFunc = function(){
  console.log("I HAVE BEEN CLICKED");
};

var colorFunc = function(){
  document.body.style.backgroundColor = array[Math.floor(Math.random() * array.length)];
};

button.addEventListener("click", colorFunc);

var textFunc = function(){
  textbox.innerText = input.value;
};

input.addEventListener("keypress", textFunc);