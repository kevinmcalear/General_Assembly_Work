
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
  if(this.guessesLeft === 0){
    this.gameOver = true;
  };
}

Hangman.prototype.guess = function(letter){
  if(((alphabet.indexOf(letter) >= 0) && (this.guessedLetters.indexOf(letter) < 0))){
    this.guessedLetters.push(letter);  
    
    var reveal = this.revealedWord;
    if(this.answer.indexOf(letter) >= 0){
      var word = this.answer;
      word.forEach(function(element, index){
        if(element === letter){
          reveal[index] = letter;

        };
      });
      console.log(reveal);
      this.revealedWord = reveal;
    } else {
      this.guessesLeft --;
    };
    this.revealedWord = reveal;
  } else {
    return false;
  };
};

Hangman.prototype.win = function(){
  if(this.revealedWord.indexOf("_") < 0){
    this.gameOver = true;
    alert("You Win!")
  };
};