// hangman.js
var Hangman = function(word) {
  this.word = word;
  this.guessesLeft = 7;
  this.misses = [];
  this.guesses = [];
  this.letterCount = word.length;
  this.wordLetters = word.split("");
  this.blankArray = new Array(this.wordLetters.length);
  
  this.game = function() {
    this.game = true;
    return this.game;
  }

  this.pickWord = function(category) {
    var word = Math.random
    return this.categories[category][0];
  }


  this.checkLetter = function(letter, word) {
    var counter = 0;

    for(var i = 0; i < this.wordLetters.length; i++) {
      if(letter === this.wordLetters[i]){
        counter++;
        this.blankArray[i] = letter;
        this.guesses.push(letter);
      }
    }

    if(counter === 0 && this.misses.join("").search(letter) === -1) {
      this.guessesLeft -= 1;
      this.misses.push(letter);
      
      if(this.guessesLeft === 0) {
        this.game = false;
        return this.game;
      }
    } 
    for(var i = 0; i < this.blankArray.length; i++) {
      if(this.blankArray[i] === undefined) {
        this.blankArray[i] = '_';
      }
    }
    if(this.blankArray.join("").search('_') !== -1){
      return this.blankArray;
    } else {
      return "You Win.  The word is " + this.word;
    }
    
  } 
}

var pickWord = function(category) {
  this.category = category;
  var categories = {
    sports: "basketball"
  }
  return categories[this.category];
}

