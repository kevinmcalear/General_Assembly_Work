var Hangman = function(category) {
	this.category = category;
	this.answer = this.setAnswer(this.category).split("");
	this.guessedLetters = new Array;
	this.guessesLeft = 7;
	this.gameOver = false;
	this.revealedWord = new Array(this.answer.length + 1).join("_").split('');
};

var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
var categories = {"sports": ["ball", "bat", "tennis", "running"],
	 "food": ["pizza", "pasta", "cookies", "cake"],
	  "animals": ["bear", "penguin", "monkey", "tiger"]};

Hangman.prototype.setAnswer = function(category){
	return categories[category][Math.floor(Math.random() * categories[category].length)]
};

Hangman.prototype.lose = function(){
	if(hangman.guessesLeft === 0){
		hangman.gameOver = true;
	};
};

Hangman.prototype.guess = function(){
	var letter = input.value;
	console.log(letter);
  if((alphabet.indexOf(letter) >= 0) && (hangman.guessedLetters.indexOf(letter) < 0)){
    hangman.guessedLetters.push(letter); 

    if(hangman.answer.indexOf(letter) >= 0){
  		var i = 0;
  		var indices = [];
  		
  		while(i < hangman.answer.length){ //while #keyword: apple
  			if(letter === hangman.answer[i]){
  				indices.push(i);
  				i++;
  			} //if
  			else{
  				i++;
  			} //else

  			var x = 0;
  		
	  		while(x < indices.length){ //while keyword: pizza
	  			hangman.revealedWord[indices[x]] = letter;
	  			x++;
	  		} // while keyword: pizza

  		}	
  		var returnWord = hangman.revealedWord;
  		// return hangman.revealedWord;
  		// hangman.answer.indexOf(letter)
  	}
  	else{
  	hangman.guessesLeft = hangman.guessesLeft - 1;
  	}
  } //while #keyword: apple
  else {

  };
  input.value = "";
};

Hangman.prototype.win = function(){
	if(hangman.revealedWord.indexOf("_") < 0){
		// alert("You win!");
		hangman.gameOver = true;
		alert("You win!")
	}
};