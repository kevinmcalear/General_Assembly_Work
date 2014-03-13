function Hangman(category){
  this.categories = {
    Pokemon: ["PIKACHU", "BULBASAUR", "VENUSAUR", "CHARMELEON", "MACHOP", "MACHAMP", "RAICHU", "MEW", "TOKEPEE", "SNORLAX"],
    Pirates: [],
    Ninjas: [],
    FecalMatterSynonyms: []
  };
  this.wrongGuesses = 7;

  this.wordToGuess = this.categories[category][Math.floor(Math.random()*this.categories[category].length)];

  this.hiddenWord = "_ "
  for(i = 0; i < (this.wordToGuess.length-1); i++){
    this.hiddenWord += "_ ";
  }

  this.guess = function(letter){
    this.letter = letter.toUpperCase();
    if(this.wordToGuess.indexOf(this.letter) == -1) {
      this.wrongGuesses -= 1;
      return false;
    } else {
      this.hiddenWordArray = this.hiddenWord.split(" ");
      for (i=0; i < this.wordToGuess.length; i++){
        if( this.letter === this.wordToGuess[i]) {
          this.hiddenWordArray[i] = this.letter;
        }
        this.hiddenWord = this.hiddenWordArray.join(" ");
      }
      return true;
    };
  };

};