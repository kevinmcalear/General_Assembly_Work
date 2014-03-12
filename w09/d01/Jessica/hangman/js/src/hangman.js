// var words = {
//   "pets": ["cat", "cat"],
//   "sports": ["soccer", "basketball", "football"]
// };

function Hangman() {
  this.guessedLetters = [];
  this.guesses = 7;
  this.word = "cat"
  this.spaces = [];
  this.correctLetters = [];
  // this.getWord = function() {
  //   var rand = Math.floor(Math.random() * words[category].length);
  //   return words[category][rand];
  // };
};

var hangman = new Hangman();

String.prototype.contains = function(word, letter){
  var i = 0;
  while (i < word.length){
    if (word.indexOf(letter)!= (-1)){
      return true
    }
    else{
      return false
    };
    i++;
  };
};

Hangman.prototype.makeSpaces = function() {
    for (var i = 0; i < hangman.word.length; i++) {
      hangman.spaces.push("_");
    };
  };

Hangman.prototype.setupGame = function(){
  hangman.makeSpaces();
};

Hangman.prototype.guessLetter = function(letter){
  hangman.word.split(" ")
  if (hangman.word.contains(hangman.word, letter)){
    hangman.correctLetters.push(letter);
  }
  else{
    hangman.guessedLetters.push(letter);
    hangman.guesses = hangman.guesses -1;
  };
};

Hangman.prototype.gameStatus = function(){
  if (hangman.guesses === 0){
    return "Game Over"
  }
  else if (hangman.correctLetters === hangman.wordSplit) {
    return "You won"}
};

