
// constructor
var Hangman = function(category){
  this.category = category;
  this.answer = this.setAnswer(this.category);
  this.guessedLetters = new Array;
  this.guessesLeft = 7;
  this.gameOver = false;
  this.revealedWord = new Array(this.answer.length + 1).join("_").split('');

};

// general variables
var categories = {"sports": ["ball", "bat", "tennis", "running"], 
"food": ["pizza", "pasta", "cookies", "cake"], 
"animals": ["bear", "penguin", "monkey", "tiger"]};

var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");

// Hangman prototype
Hangman.prototype.setAnswer = function(category){
  var answer = categories[category][Math.floor(Math.random()*(categories[category].length))].split("");
  return answer;
};

Hangman.prototype.lose = function(){
  if(hangman.guessesLeft === 0){
    hangman.gameOver = true;
  };
}

Hangman.prototype.guess = function(){
  if(((alphabet.indexOf(input.value) >= 0) && (hangman.guessedLetters.indexOf(input.value) < 0))){
    hangman.guessedLetters.push(input.value);  
    var reveal = hangman.revealedWord;
    if(hangman.answer.indexOf(input.value) >= 0){
      var word = hangman.answer;

      word.forEach(function(element, index){
        if(element === input.value){
          reveal[index] = input.value;

        };
      });
      hangman.revealedWord = reveal;

    } else {
      hangman.guessesLeft --;
    };
    hangman.revealedWord = reveal;
  };
  hangman.win();
  hangman.lose();
  input.value = "";
};

Hangman.prototype.win = function(){
  if(hangman.revealedWord.indexOf("_") < 0){
    hangman.gameOver = true;
  };
};