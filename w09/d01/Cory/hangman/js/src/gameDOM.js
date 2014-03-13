var wordList = ['ruby', 'rails', 'javascript', 'array', 'hash', 'sinatra', 'model', 'controller', 'view', 'devise', 'authentication', 'capybara', 'jasmine', 'cache', 'sublime', 'terminal', 'system', 'twitter', 'facebook', 'function', 'google', 'amazon', 'development', 'data', 'design', 'inheritance', 'prototype', 'gist', 'github', 'agile', 'fizzbuzz', 'route', 'gem', 'deployment', 'database'];
function randomWord() {
  return wordList[ Math.floor(Math.random() * (wordList.length + 1)) ]
}
// Find elements
var game = new Game(randomWord());
var guessesLeftDisplay = document.querySelector(".guesses-left");
var form = document.querySelector("form.letterForm");
var gameWord = document.querySelector(".game-word");
var guessedLettersDisplay = document.querySelector(".guessed-letters");
var newGame = document.querySelector(".new-game");
var giveUpButton = document.querySelector(".give-up");

// Build functions


var numGuessesLeft = function() {
  guessesLeftDisplay.innerText = game.guessesLeft + 1;
};
numGuessesLeft();


var setWord = function() {
  gameWord.innerText = game.correctGuesses.join("");
};
setWord();

var guessedLetters = function(e) {
  e.preventDefault();
  letter = this.elements["letter"].value;
  game.guess(letter);
  guessedLettersDisplay.innerText = game.guesses;
  guessesLeftDisplay.innerText = game.guessesLeft + 1;
  this.reset();

};

var end = function() {
  if(guessesLeftDisplay.innerText <= 0) {
    guessesLeftDisplay.innerText = "You Lose :("
  };
};

var winner = function() {
  if(game.word === game.correctGuesses.join("")) {
    guessesLeftDisplay.innerText = "Winner winner chicken dinner!!!"
  };
};

var startNewGame = function() {
  location.reload();
};

var giveUp = function() {
  guessesLeftDisplay.innerText = 0;
  gameWord.innerText = game.word;
};


// Add listeners
form.addEventListener("keyup", guessedLetters);
form.addEventListener("keyup", setWord);
form.addEventListener("keyup", end);
form.addEventListener("keyup", winner);
newGame.addEventListener("click", startNewGame)
giveUpButton.addEventListener("click", giveUp)


