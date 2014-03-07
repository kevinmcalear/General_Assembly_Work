var ul = document.querySelector("ul");
var form = document.querySelector("form.new-movie");

var addMovie = function(eventObject){
  eventObject.preventDefault();

  var li = document.createElement("li");
  // this refers to the FormElement object
  li.innerText = this.elements["title"].value;

  var checkbox = document.createElement("input");
  checkbox.type = "checkbox";
  li.appendChild(checkbox);

  ul.appendChild(li);

  this.reset();

  var strike = function() {
    if (checkbox.checked) {
      li.style.textDecoration = "line-through";
    } else {
      li.style.textDecoration = "none";
    };
  };
  checkbox.addEventListener("change", strike);
};

form.addEventListener("submit", addMovie);

/*
var guessNumberGameGenerator = function() {
  var secretNumber = Math.floor(Math.random() * 10);
  
  var guesser = function(guess) {
    return guess == secretNumber;
  };

  return guesser;
}
*/