//grabs the guess letter input box

// var guessLetterInput = document.getElementById("letter");
// var guessedLettersBox = document.querySelector(".guessed-letters")

// function grabUserInput(){
    //get letter value from input box
    //var guessLetterInput = String(document.getElementById("letter").value);
    // add to "letters guessed already", 
    // append to div id ="guessed letters" // span class guessed-letters
  //guessedLettersBox.innerText = guessLetterInput;
// }

// add functions 
// guessedLettersBox.keyup = grabUserInput;
// guessedLettersBox.addEventListener("keyup", grabUserInput)
  

var guessesLeftDom = document.getElementsByClassName("guesses-left");
guessesLeftDom[0].innerText = this.guessesLeft;

var guessedLettersDom = document.getElementsByClassName("guessed-letters");
guessedLettersDom[0].innerText = this.letterList.join(", ");

var gameWord = document.getElementsByClassName("game-word");
gameWord[0].innerText = this.hiddenWord;

var newGame = document.getElementsByClassName("new-game");
newGame[0].addEventListener("click", Hangman(wordList));

var guessLetterDom = document.getElementById("letter");
guessLetterDom.addEventListener('keyup', function(){
  Hangman.guessLetter(this.value)
});

