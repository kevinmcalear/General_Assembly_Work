var form = document.querySelector("ul");
var ul = document.querySelector("ul");

var addMovie = function(){
  eventObject.preventDefault();
  var li = document.createElement("li");

  li.innerText = ithis.elements["title"].value;

  var checkbox = document.createElement("input");
  checkbox.type = "checkbox";
  li.appendChild(checkbox);

  ul.appendChild(li);

  this.reset();

  var strike = function(){
    if(checkbox.checked){
      li.style.textDecoration = "line-through";
    }else{
      li.style.textDecoration = "none";
    };
  };
  checkbox.addEventListener("change", strike);
};

var guessNumberGameGenerator = function() {
  var secretNumber = Math.floor(Math.random() * 10);
  
  var guesser = function(guess) {
    return guess == secretNumber;
  };

  return guesser;
}