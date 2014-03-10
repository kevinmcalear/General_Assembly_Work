function Hangman(initialValues) {

  this.wordList = [];

  this.populateWordList = function() {
    this.wordList.push([["sports"], ["fencing", "cricket", "bobsledding", "bocce", "marching band"]]);
    this.wordList.push([["appliances"], ["dishwasher", "fridge", "vacuum", "stove"]]);
  };

  this.populateWordList();

  this.pickWord = function() {
    var wordGroup = this.wordList[Math.floor(Math.random() * this.wordList.length)];
    this.category = wordGroup[0];
    return wordGroup[1][Math.floor(Math.random() * wordGroup.length)];
  };


  this.secretWord = initialValues.secretWord || this.pickWord();
  this.category = "";
  this.guessesLeft = 7;
  this.wrongLetters = [];
  this.rightLetters = new Array(this.secretWord.length);
  this.allGuesses = [];
  for(var i = 0; i < this.rightLetters.length; i++) {
    this.rightLetters[i] = "";
  };
  this.status = "playing";

  this.visibleWordSpaces = function() {
    var vis = [];
    for(var i = 0; i < this.secretWord.length; i++) {
      if (this.rightLetters[i] === "") {
        vis.push("_");
      }
      else {
        vis.push(this.rightLetters[i]);
      };
    };
    console.log(vis);
    console.log(this.secretWord);
    return vis.join(" ");
  };

  this.visibleWord = this.visibleWordSpaces();

//console.log(this.secretWord);



  this.guess = function(letter) {
    if ( this.status === "playing" ) {
      if (!this.present(letter)) {
        this.wrongLetters.push(letter);
        this.allGuesses.push(letter);
        this.guessesLeft--;
      }
      if ( this.guessesLeft === 0 ){
        this.status = "lost";
      };
    };
    this.statusUpdate();
    this.visibleWord = this.visibleWordSpaces();
  }

  this.present = function(letter) {
    var there = false;
    for (var i = 0; i < this.secretWord.length; i++ ){
      if (letter === this.secretWord.charAt(i)) {
        if (there === false) {
          this.allGuesses.push(letter);
        }
        there = true;
        this.rightLetters[i] = letter;
      }
    };
    return there;
  };

  this.statusUpdate = function() {
    if (this.guessesLeft === 0) {
      this.status = "lost";
    }
    if (this.rightLetters.join("") === this.secretWord) {
      this.status = "won";
    };
  };


};
