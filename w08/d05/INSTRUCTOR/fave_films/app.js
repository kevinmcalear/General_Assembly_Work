// at the beginning variables are declared that correspond to the existing html structures that will (1) receive the product of the function handling user input and (2) be the source of that user input

var ul = document.querySelector("ul");
var form = document.querySelector("form.new-movie");

// Next a fuction is defined that defines (1) how (2) movie is added to an existing part of the dom tree

var addMovie = function(eventObject){
  eventObject.preventDefault();

  var li = document.createElement("li");
  // this refers to the FormElement object
  li.innerText = this.elements["title"].value;

  // This code is responsible for creating and appending a checkbox to the movie that gets added
  var checkbox = document.createElement("input");
  checkbox.type = "checkbox";
  li.appendChild(checkbox);

  // This is where the html string that we've built actually gets added to the DOM tree
  ul.appendChild(li);

  // I don't know what this does, but I suspect it allows us to define li anew? except that I thought declaring var li is enough
  this.reset();
};

form.addEventListener("submit", addMovie);
ul.addEventListener("change", function(eventObject) {
  if (eventObject.target.checked) {
    eventObject.target.parentElement.style.textDecoration = "line-through";
  } else {
    eventObject.target.parentElement.style.textDecoration = "none";
  }
});
/*
var guessNumberGameGenerator = function() {
  var secretNumber = Math.floor(Math.random() * 10);
  
  var guesser = function(guess) {
    return guess == secretNumber;
  };

  return guesser;
}
*/