var words = {
  "animals": ["elephant", "dolphin", "rhinoceros"],
  "sports": ["baseball", "basketball"]
};

function Hangman(category){
  this.wordLetters;
  this.spaces = [];
  this.wrongGuesses = 7;
  this.guessedLetters = [];
  this.gameInProgress = true;

  this.getWord = function() {
    var rand = Math.floor(Math.random() * words[category].length);
    return words[category][rand];
  };

  this.makeLetters = function() {
    this.wordLetters = this.getWord().split("");
  };

  this.makeSpaces = function() {
    for (var i = 0; i < this.wordLetters.length; i++) {
      this.spaces.push("_");
    };
  };

  this.gameOverTest = function() {
    this.gameInProgress = false;
    for (var j = 0; j < this.spaces.length; j++) {
      if (this.spaces[j] === "_") {
        this.gameInProgress = true;
      }
    };

    if (this.wrongGuesses === 0) {
      this.spaces = this.wordLetters;
      this.gameInProgress = false;
    }
  };

  this.checkGuess = function(letter) {
    if (this.gameInProgress) {
      var shouldDecrementGuesses = true;

      if (this.guessedLetters.some(function(e){
        return e === letter;
      })) {
        shouldDecrementGuesses = false;
      } else {
        this.guessedLetters.push(letter);
      };

      for (var i = 0; i < this.spaces.length; i++) {
        if (this.wordLetters[i] === letter) {
          this.spaces[i] = letter;
          shouldDecrementGuesses = false;
        };
      }
      if (shouldDecrementGuesses) {
        this.wrongGuesses -= 1;
      };
    };
    this.gameOverTest();  
  };

  this.giveUp = function() {
    this.spaces = this.wordLetters;
    this.gameInProgress = false;
  };

  this.hangmanSetup = function(){
    this.makeLetters();
    this.makeSpaces();
    this.guessedLetters = [];
    // gameWord.innerText = this.spaces.join(" ");
    // guessesLeft.innerText = this.wrongGuesses;
  };

};