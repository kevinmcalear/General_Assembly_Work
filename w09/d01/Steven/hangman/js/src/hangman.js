function Game(word){
  this.word = word;
  this.incorrectGuesses = [];
  this.correctGuesses = [];
  this.compare = function(guessLetter){
    if(word.search(guessLetter) >= 0){
      var splitWord = this.word.split("");
      for(var i = 0; i<splitWord.length; i++){
        if(guessLetter === splitWord[i]){
          this.correctGuesses.push(guessLetter)
        }
      } return true;
    } else {
      this.incorrectGuesses.push(guessLetter);
      return false;
      };
    };
    this.endGame = function(){
      if(this.incorrectGuesses.length === 7){
        return "computer wins!";
      } else if(this.word.length == this.correctGuesses.length){
        return "user wins!";
    };
  };
  this.play = function(letter){
    this.compare(letter);
    this.endGame();
  };
};