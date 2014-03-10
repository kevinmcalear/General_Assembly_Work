function Hangman(initialValues) {

  this.secretWord = initialValues.secretWord;
  this.guessesLeft = 7;
  this.wrongLetters = [];
  this.rightLetters = new Array(this.secretWord.length);
  this.status = "playing";

  this.guess = function(letter) {
    if ( this.guessesLeft > 0 ) {
      if (!this.present(letter)) {
        this.wrongLetters.push(letter);
        this.guessesLeft--;
      }
      if ( this.guessesLeft === 0 ){
        this.status = "lost";
      };
    }
  }

  this.present = function(letter) {
    var there = false;
    for (var i = 0; i < this.secretWord.length; i++ ){
      if (letter === this.secretWord.charAt(i)) {
        there = true;
        this.rightLetters[i] = letter;
      }
    };
    return there;
  }

};
