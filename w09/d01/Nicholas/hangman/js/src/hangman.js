var startButton = document.querySelector('button.new-game');
var giveupButton = document.querySelector('button.give-up');
var guessLetter = document.getElementById("letter");
var guessesLeft = document.querySelector('span.guesses-left');
var guessLetters = document.querySelector('span.guessed-letters');
var playword = document.querySelector('.game-word');

var words = ["lizard", "ant", "moose", 'acres','adult','brick','calm','canal','claws','coach','constantly','contrast','cookies','customs'];

function Hangman(){
  this.gameWord = words[Math.floor(Math.random() * words.length)];
  this.attemptCounter = 7;
  this.guessedLetters = [];
  this.word = [];
  // guessesLeft.innerText = this.attemptCounter;
}

Hangman.prototype.guess = function(userGuess) {
  var letterIndex = game.gameWord.split('').indexOf(userGuess, 0);

  while(letterIndex != -1 ) {
    console.log(userGuess);
    console.log(letterIndex);
    game.word[letterIndex] = userGuess;
    playword.innerText = game.word.join("");
    return true;
  }
    if(letterIndex == -1) {
      game.attemptCounter -= 1;
      game.guessedLetters.push(userGuess);
      guessesLeft.innerText = game.attemptCounter;
      guessLetters.innerText = game.guessedLetters.join("");
    }

    if(game.attemptCounter === 0) {
      alert("Game Over! Click OK to play again");
      game = new Hangman();
      game.attemptCounter += 1;
    }
};

Hangman.prototype.giveup = function(){
  alert("You chose to Give Up!");
  game = new Hangman();
};

window.onload = function(){
  game = new Hangman();
  for(var i = 0; i < game.gameWord.length; i++){
    game.word.push("_");
  }
  playword.innerText = game.word.join("");
};

startButton.addEventListener("click", function() {
  game = new Hangman();
});

giveupButton.addEventListener("click", function() {
  Hangman.prototype.giveup();
});

guessLetter.addEventListener("keyup", function() {
  userGuess = guessLetter.value;
  Hangman.prototype.guess(userGuess);
  guessLetter.value = "";
});


