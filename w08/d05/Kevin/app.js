// Find and prepairing elements
// var input = document.querySelector("input");
// var button = document.querySelector("button");
var form = document.querySelector("form.new-movie");
var ul = document.querySelector("ul");

// <input type="checkbox" name="vehicle" value="Bike">
// Building our addItem function
// var addItem = function() {
//   var li = document.createElement("li");
//   li.innerText = input.value;
//   ul.appendChild(li);
//   input.value = '';
// };

var addItem = function(e) {
  e.preventDefault();
  var li = document.createElement("li");
  var checkbox = document.createElement("input");
  checkbox.type = "checkbox";
  
  li.innerText = this.elements["title"].value;
  ul.appendChild(li);
  li.insertAdjacentElement('afterbegin', checkbox);
  
  this.reset();
};

var checkStrike = function(e) {
  if( e.target.checked ) {
    e.target.parentElement.style.textDecoration = "line-through";
  } else {
    e.target.parentElement.style.textDecoration = "none";
  }
};

// Setting up our event listeners
form.addEventListener('submit', addItem);
ul.addEventListener('change', checkStrike);
