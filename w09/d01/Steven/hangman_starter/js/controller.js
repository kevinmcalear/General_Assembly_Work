var startGame = document.querySelector("button.new-game");
var giveUp = document.querySelector("button.give-up");
var lettersGuessed = document.querySelector("span.guessed-letters");
var guessesLeft = document.querySelector("span.guesses-left");
var input = document.querySelector("input#letter");
var gameWord = document.querySelector("div.game-word");


game = new Game();

  startGame.addEventListener("click", function(){
    console.log(game.word);
    var dashes = [];
    for(var i = 0; i < game.word.length; i++){
      dashes.push("_") };
    gameWord.innerText = dashes.join("");
    });

  var updateCount = function(){
    guessCount = 7 - game.incorrectGuesses.length;
    if(guessCount <= 0){
      guessCount = "Computer Wins!"
      gameWord.innerText = game.word};
     guessesLeft.innerText = guessCount;
  };

  input.addEventListener("keyup", function(){
    console.log(game.word);
    if(guessesLeft.innerText != "Computer Wins!"){
      game.play(input.value);
      lettersGuessed.innerText = game.incorrectGuesses;
      updateWord(input.value);
      input.value = null;
      updateCount();
      checkWinner();
    }; 
  });

var updateWord = function(letter){
  a = game.word.split("")
  array = gameWord.innerText.split("");
  a.forEach(function(l,i){
    if(l === letter){
      array[i] = letter;
    };
  });
  gameWord.innerText = array.join("");
};

var checkWinner = function(){
  if(game.correctGuesses.length == game.word.length){
    guessesLeft.innerText = "USER WINS!!!!!";
  }
};

giveUp.addEventListener("click", function(){
  guessesLeft.innerText = "WAY TO GIVE UP, JERK";
});


