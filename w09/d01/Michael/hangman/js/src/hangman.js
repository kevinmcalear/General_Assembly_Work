function wordGuess(word){
  wordGuessArray = []
  for(i = 0; i < word.length; i++){
    wordGuessArray.push("*")
  };
  return wordGuessArray.join("")
};


function Game(word){
  this.guessCount = 7;
  this.wrongLetterGuess = new Array;
  this.word = word;
  this.wordGuess = wordGuess(word);
};

function categoryToWord(category){
  var dictionary = {
    "test": ["test"],
    "sports": ["basketball","baseball", "hockey", "football", "boxing"],
    "foods": ["eggs", "nachos", "pizza", "chocolate", "flax"],
    "games": ["sudoku", "monopoly", "sorry", "chess", "checkers"],
    "music": ["beatles", "tupac", "bonobo", "mozart", "kraftwerk"],
    "movies": ["matrix", "titanic", "inception", "fargo", "aladdin"]
  }
  var num = Math.floor(Math.random() * dictionary[category].length);
  userGame = new Game(dictionary[category][num])
};


// Game.prototype.guess = function(letter){
//   if(this.guessAllowed(letter) ===true ){

//   };

// };



//Step 1:  Determine if Guess is Allowed
  //Step 1A:  Are there Guesses Left?
  //Step 1B:  Is the Guess an alpha?

Game.prototype.guessAllowed = function(letter){
  var alph = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t", "u","v","w","x","y","z"];
  var letter = letter.toLowerCase()
  var guessAllowed = false

  if( (this.guessCount>0) && (letter.length === 1)  && (alph.indexOf(letter) >=0) ){
    guessAllowed = true
  };
  return guessAllowed
};


Game.prototype.updateWordGuess= function(letter){

  var splitWord = this.word.split("")
  var splitWordGuess = this.wordGuess.split("")
  
  for(var i = 0; i < splitWord.length; i++) {
    if(splitWord[i] === letter) {
      splitWordGuess[i] = letter
      }
    }  
  return this.wordGuess =splitWordGuess.join("")

};

Game.prototype.decrementGuessCount = function(){
  this.guessCount -=1;
}


Game.prototype.guessCorrect = function(letter){
  var splitWord = this.word.split("")
  var splitWordGuess = this.wordGuess.split("")
  var correct = false
  
  for(var i = 0; i < splitWord.length; i++) {
    if(splitWord[i] === letter) {
      correct = true
    };
  };

  if(correct===true){
    this.updateWordGuess(letter)  
  }else{
    this.guessIncorrect(letter);
    this.decrementGuessCount()  
  };

  return correct
};

Game.prototype.guessIncorrect = function(letter){
  this.wrongLetterGuess.push(letter)
};





Game.prototype.determineGame = function(){
  if(this.word === this.wordGuess){
    return "Win"
  }else if(this.guessCount === 0){
    return "Lose"
  }else{ 
    return "Keep Playing"
  };
};
