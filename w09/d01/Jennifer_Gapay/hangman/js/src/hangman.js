var wordList = ["dog", "Jake", "paint", "philipisgreate"]

String.prototype.replaceAt=function(index, character) {
    return this.substr(0, index) + character + this.substr(index+character.length);
}

function Hangman(wordList) {
  this.wordList = wordList;
  this.letterList = [];
  this.guessesLeft = 7;
  //this pulls a random word in wordList
  this.secretWord = wordList[Math.floor(Math.random()*this.wordList.length)];
  //this creates underscore for each letter in the secret word
  this.hiddenWord = new Array(this.secretWord.length + 1).join( "_" );

  this.guessLetter = function(letter) {

    this.letterList.push(letter);
    //below minuses guesses left
    if (this.secretWord.search(letter) < 0) {
      this.guessesLeft -= 1;
    } else {
      //this loops goes through entire word to find the guessed letters
      for(var i=0; i<this.secretWord.length;i++) {
        if (this.secretWord[i] === letter) {
          // we added a replaceAt method to the String prototype to allow us
          // to call this.hiddenWord.replaceAt( index, letter ), which returns
          // a new string with the old string's (hiddenWord's) letters, but the
          // index at index replaced with whatever letter is letter

          // this only replaces one instance of a letter! so we wrapped it in a for loop
          // that steps through the entire secretWord, and only calls this method
          // IF the letter we have guessed is the current letter at the secretWord's index
          this.hiddenWord = this.hiddenWord.replaceAt(i,letter);
        }
      }
    }
  }
    this.youLost = function() {
      if (this.guessesLeft === 0) {
      return "You Lost!";
      };
    };

    this.youWon = function() {
      if (this.hiddenWord === this.secretWord) {
        return "You Won!";
      };
    };
  };
2
Hangman(wordList);