console.log("YO");

// define colors
var array = ["red", "blue", "green"]

// define where to start
var button = document.querySelector("button");

// define the list start
var ul = document.createElement("ul");
// insert the list into the DOM
button.insertAdjacentElement("afterend", ul);

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