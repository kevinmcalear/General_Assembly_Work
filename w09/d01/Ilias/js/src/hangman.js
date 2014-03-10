function Hangman(word){
  this.word = word;
  this.wordCount = word.length;
  this.incorrectLetters = [];
  this.correctLetters = new Array(this.word.length);
  this.guess = function(letter){
    if (this.word.search(letter) === -1){
      this.incorrectLetters.push(letter);
      if (this.incorrectLetters.length === 7){
        return "You lose!";
      } else {
        return false;
      }
    } else {
      var wordArray = word.split("");
      for (var i; i < this.word.length; i++ ){
        if (wordArray[i] === letter) {
          this.correctLetters[i] = letter;
        }
        if (this.correctLetters.join("") === this.word){
          return "You win!";
        } else {
        return letterIndex;
        }
      }
    }
  };
}