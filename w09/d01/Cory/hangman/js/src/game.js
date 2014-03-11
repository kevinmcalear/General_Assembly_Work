function Game(word){
  this.word = word;
  this.guessesLeft = 6;
  this.guesses = [];
  this.correctGuesses = [];
  for(var i = 0; i < word.length; i++) {
      this.correctGuesses[i] = "_";
  };
  this.incorrectGuesses = [];
  this.end = false;
};

Game.prototype.guess = function(letter){
  this.guesses.push(letter);
  wordArray = this.word.split("");

  var containsLetter = false;

  for(var i = 0; i < wordArray.length; i++) {
    if(letter === wordArray[i]) {
      containsLetter = true;
      this.correctGuesses[i] = letter;
    };
  };

  if (!containsLetter) {
    this.incorrectGuesses.push(letter);
    this.guessesLeft = this.guessesLeft - 1;
  };

  if(this.correctGuesses.join("") === this.word) {
    this.end = true;
  };

  if(this.guessesLeft === -1) {
    this.end = true;
  };
  
};