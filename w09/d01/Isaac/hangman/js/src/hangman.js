function include(arr,obj) {
  return (arr.indexOf(obj) != -1);
}
function cover(word){
  var word = word.split("");
  var covered = [];
  for(i=0;i<word.length;i++){
    covered.push("_");
  };
  return covered.join("");
};

function Hangman(initialSettings){
  initialSettings = initialSettings || {};
  this.word = initialSettings.word || "";
  this.word = this.word + ""; //make sure it's a string
  this.category = initialSettings.category || "";
  this.category = this.category + "";
  this.covered = cover(this.word);
  this.score = 5;
  this.lettersGuessed = []
};

Hangman.prototype.guessLetter = function(letter){
  this.covered = this.covered.split("");
  this.lettersGuessed.push(letter);
  for(i=0;i<this.word.length;i++){
    if(this.word[i]===letter){
      this.covered[i] = letter;
    };
  };
  this.covered = this.covered.join("");
  if(include(this.word, letter)){
    return true;
  }else{
    this.score -= 1;
    return false;
  };
};








