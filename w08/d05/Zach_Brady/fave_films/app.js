// at the beginning variables are declared that correspond to the existing html structures that will (1) receive the product of the function handling user input and (2) be the source of that user input

var ul = document.querySelector("ul");
var form = document.querySelector("form.new-movie");

// Next a fuction is defined that defines (1) how (2) movie is added to an existing part of the dom tree

// But what exactly is going on with the input to this function?
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

// The two eventListeners below are specifically responsible for the pages interactivity

// this code links the information inputted to the form field when the user presses submit
form.addEventListener("submit", addMovie);

// this code alternately adds or removes a line-through to/from a movie in the list
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