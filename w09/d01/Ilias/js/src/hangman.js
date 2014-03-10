function Hangman(word){
  this.word = word;
  this.wordCount = word.length;
  this.guessedLetters = [];
  this.correctLetters = new Array(this.word.length);
  this.guess = function(letter){
    var guessedLettersString = this.guessedLetters.join("");
    if (guessedLettersString.search(letter) != -1){
    } else {
    this.guessedLetters.push(letter);
      if (this.guessedLetters.length === 7){
        return "You lose!";
      } else {
        if (this.word.search(letter) === -1 ){
          return false;
        } else {
          var wordArray = word.split("");
          for (var i = 0; i < this.word.length; i++ ){
            if (wordArray[i] === letter) {
              this.correctLetters[i] = letter;
            }
          }
          if (this.correctLetters.join("") === this.word){
            return "You win!";
          } else {
            console.log(this.correctLetters);
            return true;
          }
        }
      }
    }
  };
}