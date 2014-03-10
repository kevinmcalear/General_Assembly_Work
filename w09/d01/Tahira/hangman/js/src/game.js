function Game(word){
  this.word = word;
  this.guessesLeft = 7;
  this.guesses = [];
  this.correctGuesses = [];
  this.incorrectGuesses = [];
  this.end = false;
};

Game.prototype.guess = function(letter){
  this.guesses.push(letter);
  wordArray = this.word.split("");

  var i=0;
  var containsLetter = false;

  for(var i=0; i<wordArray.length; i++) {
    if(i === 0) {
    for(var j=0; j<wordArray.length; j++)
     this.correctGuesses[j] = "*";
    };
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

  if(this.guessesLeft === 1) {
    this.end = true;
  };
  
};

