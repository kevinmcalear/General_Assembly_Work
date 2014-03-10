function categoryToWord(category){
  var dictionary = {
    "sports": ["basketball"],
    "food": ["eggs", "nachos"]
  }
  var num = Math.floor(Math.random() * dictionary[category].length);
  return dictionary[category][num]
};

starPower = function(word) {
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
  this.wordGuess = starPower(word);

};


Game.prototype.updateWordGuess= function(letter){

  var splitWord = this.word.split("")
  var splitWordGuess = this.wordGuess.split("")
  
  for(var i = 0; i < splitWord.length; i++) {
    if(splitWord[i] === letter) {
      splitWordGuess[i] = letter
      }
    }  
  return splitWordGuess.join("")

};

Game.prototype.decrementGuessCount = function(){
  this.guessCount -=1
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
    this.updateWordGuess()  
  }else{
    this.decrementGuessCount()  
  };

  
};


function guessAllowed(letter){
  var alph = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t", "u","v","w","x","y","z"];

  var letter = letter.toLowerCase()

  if(letter.length === 1 && alph.indexOf(letter) >=0){
    return true
  }else{
    return false
  };
};

