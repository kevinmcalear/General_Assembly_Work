var words = {
  "animals": ["elephant", "dolphin", "rhinoceros"],
  "sports": ["baseball", "basketball"]
};

function Hangman(category){
  this.wordLetters;
  this.spaces = [];
  this.wrongGuesses = 7;

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

  this.checkGuess = function(letter) {
    for (var i = 0; i < this.spaces.length; i++) {
      if (this.wordLetters[i] === letter) {
        this.spaces[i] = letter;
      }
    }
  };

};