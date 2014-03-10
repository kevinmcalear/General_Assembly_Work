var form = document.querySelector("form.new-movie");
var ul = document.querySelector("ul");

var addMovie = function(e){
  e.preventDefault();
  var checkbox = document.createElement("input");
  checkbox.type = "checkbox";
  // checkbox.addEventListener("change", strikeMovie);
  var li = document.createElement("li");
  li.innerText = this.elements["title"].value;
  li.appendChild(checkbox);
  ul.appendChild(li);
  this.reset();
};

// var strikeMovie = function(){
//   if (this.checked == true ){
//     this.parentElement.style.textDecoration = "line-through";
//   } else {
//     this.parentElement.style.textDecoration = "none";
//   };
// };

form.addEventListener("submit", addMovie);
ul.addEventListener("change", function(eventObject){
  if(eventObject.target.checked) {
    eventObject.target.parentElement.style.textDecoration = "line-through";
  } else {
    eventObject.target.parentElement.style.textDecoration = "none";
  }
});

// var guessNumberGame = function() { 
//   var secretNumber = Math.floor(Math.random()*10);
//   var guesser = function(guess) {
//     return guess === secretNumber;
//   };
//   return guesser;
// }