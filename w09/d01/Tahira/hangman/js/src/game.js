function Game(word){
  this.alpha = "abcdefghijklmnopqrstuvwxyz".split("");
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
  wordArray = this.word.split("");

  var wordContainsLetter = false;
  var isValidInput = false;
  var alreadyGuessed = false;

  for(var k=0; k<this.alpha.length; k++){
    if(this.alpha[k] === letter){
      isValidInput = true;
    }
  };

  for(var j=0; j<this.guesses.length; j++){
    if(this.guesses[j] === letter){
      alreadyGuessed = true;
    }
  };

// valid input is only A-Z or a-z; does not decrement guesses if invalid input is entered, it simply ignores invalid input
  if(isValidInput && !alreadyGuessed) {
    this.guesses.push(letter);
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

// random word generator from prepopulated words Array
// TO DO: Add categories!
function generateWord() {
  var words = ["hello", "goodbye", "penguin", "cookie", "pizza", "capybara", "what"];
  this.word = words[parseInt(Math.random()*words.length)]
}

// TO DO ----- > 
// games won lost
// lose
// when reset page go to 0/0
// second player -> still against the computer
