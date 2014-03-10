// hangman.js
var Hangman = function(word) {
  this.word = word;
  this.guessesLeft = 7;
  this.misses = [];
  
  this.game = function() {
    return true;
  }

  this.countLetters = function(word) {
    var letterCount = word.length;
    return letterCount;
  }

  this.checkLetter = function(letter, word) {
    var counter = 0;
    var misses = [];
    var wordLetters = word.split("");
    var blankArray = new Array(wordLetters.length);

    for(var i = 0; i < wordLetters.length; i++) {
      if(letter === wordLetters[i]){
        counter++;
        blankArray[i] = letter;
      }
    }
    if(counter === 0) {
      this.guessesLeft -= 1;
      this.misses.push(letter);
      if(this.guessesLeft === 0) {
        this.game = false;
        return this.game;
      }
    }
    for(var i = 0; i < blankArray.length; i++) {
      if(blankArray[i] === undefined) {
        blankArray[i] = '_';
      }
    }
    return blankArray;
  }

}


