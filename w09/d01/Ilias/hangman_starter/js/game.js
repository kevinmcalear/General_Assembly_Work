function newGame(){
  var word = hangWords[Math.floor(Math.random()*hangWords.length)];
  game = new Hangman(word);
  makePlaceholders = function(){
    var places = "_";
    for ( var i = 0; i < game.word.length - 1; i++ ){
      places += " _";
    }
    return places;
  };
  gameWord.innerText = makePlaceholders();
}

function Hangman(word){
  this.word = word;
  this.wordCount = word.length;
  this.guessedLetters = [];
  this.correctLetters = new Array(this.word.length);
  this.incorrectLetters = [];
  this.guess = function(letter){
    var guessedLettersString = this.guessedLetters.join("");
    if (guessedLettersString.search(letter) != -1){
    } else {
    this.guessedLetters.push(letter);
      if (this.incorrectLetters.length === 7){
        return "lose";
      } else {
        if (this.word.search(letter) === -1 ){
          this.incorrectLetters.push(letter);
          return false;
        } else {
          var wordArray = word.split("");
          for (var i = 0; i < this.word.length; i++ ){
            if (wordArray[i] === letter) {
              this.correctLetters[i] = letter;
            }
          }
          if (this.correctLetters.join("") === this.word){
            return "win";
          } else {
            console.log(this.correctLetters);
            return true;
          }
        }
      }
    }
  };
}