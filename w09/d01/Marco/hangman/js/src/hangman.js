var words = ["lizard", "ant", "moose", 'acres','adult','brick','calm','canal','claws','coach','constantly','contrast','cookies','customs', "terminator", "slicer","ninja", "cow", "robot", "littlegirl"];
var startButton = document.querySelector("button.new-game");
var guessedLettersUL = document.createElement('ul');
var guessedLettersLI = document.createElement('li');
var showGuessedLetters = document.querySelector("span.guesses-left");

function Hangman(){
  this.gameWord = words[Math.floor(Math.random() * words.length)];;
  this.attemptCounter = 7;
  this.guessedLetters = [];

  guessedLettersUL.appendChild(guessedLettersLI);

  var addLetters = function() {
    
  };
};

Hangman.prototype.guess = function(userGuess) {
  this.guessedLetters.push(userGuess);
  var letterIndex = this.gameWord.split('').indexOf(userGuess, 0);

  while(letterIndex != -1 ) {
    return true;
  }

  if(letterIndex == -1) {
    this.attemptCounter -= 1;
  };
};

startButton.addEventListener("click", function() {
  newGame = new Hangman();
  console.log(newGame);
});




