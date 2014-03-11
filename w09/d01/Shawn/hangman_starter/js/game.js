// hangman.js
var Hangman = function(word) {
  this.word = word;
  this.guessesLeft = 7;
  this.misses = [];
  this.guesses = [];
  this.letterCount = word.length;
  this.wordLetters = word.split("");
  this.blankArray = new Array(this.wordLetters.length);
  this.game = true;

  this.setBoard();
}

Hangman.prototype.setBoard = function() {
  for(var i = 0; i < this.blankArray.length; i++) {
    if(this.blankArray[i] === undefined) {
      this.blankArray[i] = '_';
    }
  }
}
  
Hangman.prototype.game = function() {
  return this.game;
}

Hangman.prototype.checkLetter = function(letter, word) {
  var counter = 0;
  this.guesses.push(letter);
  
  for(var i = 0; i < this.wordLetters.length; i++) {
    if(letter === this.wordLetters[i]){
      counter++;
      this.blankArray[i] = letter;
    }
  }

  if(counter === 0 && this.misses.join("").search(letter) === -1) {
    this.guessesLeft -= 1;
    this.misses.push(letter);
      
    if(this.guessesLeft === 0) {
      this.game = false;
      return ["You Lose"];
    }
  } 

  if(this.blankArray.join("").search('_') !== -1){
    return this.blankArray;
  } else {
    return ["You Win.  The word is " + this.word];
  }
    
} 


var pickWord = function(category) {
  var hangWords = ["abbey","abruptly","affix","askew","axiom","azure","bagpipes","bandwagon","banjo","bayou","bikini","blitz","bookworm","boxcar","boxful","buckaroo","buffalo","buffoon","cobweb","croquet","daiquiri","disavow","duplex","dwarves","equip","exodus","fishhook","fixable","foxglove","galaxy","galvanize","gazebo","gizmo","glowworm","guffaw","haiku","haphazard","hyphen","icebox","injury","ivory","ivy","jaundice","jawbreaker","jaywalk","jazzy","jigsaw","jiujitsu","jockey","jovial","joyful","juicy","jumbo","kazoo","keyhole","khaki","kilobyte","kiosk","kiwifruit","knapsack","larynx","luxury","marquis","megahertz","microwave","mystify","nightclub","nowadays","numbskull","ovary","oxidize","oxygen","pajama","peekaboo","pixel","pizazz","pneumonia","polka","quartz","quiz","quorum","razzmatazz","rhubarb","rickshaw","schizophrenia","sphinx","spritz","squawk","subway","swivel","topaz","unknown","unworthy","unzip","uptown","vaporize","vixen","vodka","vortex","walkway","waltz","wavy","waxy","wheezy","whiskey","whomever","wimpy","wizard","woozy","xylophone", "yachtsman", "yippee", "youthful", "zephyr", "zigzag","zilch","zodiac","zombie"];
    
    var i = Math.floor(Math.random() * hangWords.length);
    return hangWords[i];
}

