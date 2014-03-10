function Hangman(word){
  this.word = word;
  this.wordCount = word.length;
  this.guess = function(letter){
    if (word.search(letter) === -1){
      return false;
    } else {
      return word.search(letter);
    }
  };
}