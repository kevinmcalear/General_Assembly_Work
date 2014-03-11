function Game(word){
  this.alpha = "abcdefghijlmnopqrstuvwxyz".split("");
  this.word = word;
  this.guessesLeft = 6;
  this.guesses = [];
  this.correctGuesses = [];
  for(var j=0; j<word.length; j++) {
      this.correctGuesses[j] = "*";
  };
  this.incorrectGuesses = [];
  this.end = false;
};

Game.prototype.guess = function(letter){
  this.guesses.push(letter);
  wordArray = this.word.split("");

  var wordContainsLetter = false;
  var isValidInput = false;

  for(var k=0; k<this.alpha.length; k++){
    if(this.alpha[k] === letter){
      isValidInput = true;
    }
  };

// valid input is only A-Z or a-z; does not decrement guesses if invalid input is entered, it simply ignores invalid input
  if(isValidInput) {
    for(var i=0; i<wordArray.length; i++) {
      if(letter === wordArray[i]) {
        wordContainsLetter = true;
        this.correctGuesses[i] = letter;
      };
    };

    if (!wordContainsLetter) {
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
};

function generateWord() {
  var words = ["hello", "goodbye", "penguin", "cookie", "pizza"];
  this.word = words[parseInt(Math.random()*words.length)]
}


// games won lost
// lose
// when reset page go to 0/0
// second player --> still against the computer
