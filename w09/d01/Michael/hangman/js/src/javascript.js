//Idenfity the Page Variables
var newGame = document.querySelector(".new-game");
var guessesLeft = document.querySelector(".guesses-left");
var game = document.querySelector(".new-game");
var gameWord = document.querySelector(".game-word");
var giveUp = document.querySelector(".give-up");
var inputText = document.querySelector("#letter");
var guessedLetter = document.querySelector(".guessed-letters")

// newGame.addEventListener("click", location.reload())

//Step 1:  User Selects a Category
var userInput = prompt("Choose a category: foods / sports / games / music / movies")
game.addEventListener("click", categoryToWord(userInput));
gameWord.innerText = userGame.wordGuess;

//Step 2:  Update Accept Guesses
  //Step 1A:  Store Value 
  //Step 1B:  Determine if its the correct Letter
  //Step 1C:  Update the Screen 
  //Step 1D:  Determine if Game is Won

inputText.addEventListener("keyup",function(){
	var letter = inputText.value
	userGame.guessCorrect(letter)
  gameWord.innerText = userGame.wordGuess;
  guessesLeft.innerText = userGame.guessCount;
  guessedLetter.innerText = userGame.wrongLetterGuess.join()
	var outcome = userGame.determineGame()
    
    if(outcome === "Win"){
      gameWord.innerText = "You Win!"
    }else if (outcome === "Lose"){
      gameWord.innerText = "You Lose!"
    };

  inputText.value = ""
}); 

//In Progress
//Step 3:  User Starts New Game (NOTE:  Off the New Game and Quit Buttons)
newGame.addEventListener("click",function(){
  var userInput = prompt("Choose a category: foods / sports / games / music / movies")
});


