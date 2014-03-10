function Hangman() {
  this.guessedLetters = [];
  this.guesses = 7;
  this.word = "cat";
  this.correctLetters = [];
};


String.prototype.contains = function(word, letter){
  var i = 0;
  while (i < word.length){
    if (word.indexOf(letter)!= (-1)){
      return true
    }
    else{
      return false
    };
    i++;
  };

};


Hangman.prototype.guessLetter = function(letter){
    if (this.word.contains(this.word, letter)){
      this.correctLetters.push(letter);}
    else{
      this.guessedLetters.push(letter);
      this.guesses = this.guesses -1;
    };
  };

Hangman.prototype.gameStatus = function(){
  if (this.guesses === 0){
    return "Game Over"
  }
  else if (this.correctLetters.join(",")===this.word) {
    return "You won"}
};
