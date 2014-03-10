var startGame = document.querySelector("button.new-game");
var giveUp = document.querySelector("button.give-up");
var lettersGuessed = document.querySelector("span.guessed-letters");
var guessesLeft = document.querySelector("span.guesses-left");
var input = document.querySelector("#letter");
var gameWord = document.querySelector("div.game-word");
var gamesWonP1 = document.querySelector("span.games-won-1");
var gamesLostP1 = document.querySelector("span.games-lost-1");
var gamesWonP2 = document.querySelector("span.games-won-2");
var gamesLostP2 = document.querySelector("span.games-lost-2");
var player1 = document.querySelector("span.player-1");
var player2 = document.querySelector("span.player-2");

game = new Game();
gameCount = 0;

var winsP1 = 0;
var losesP1 = 0;
gamesWonP1.innerText = winsP1;
gamesLostP1.innerText = losesP1;

var winsP2 = 0;
var losesP2 = 0;
gamesWonP2.innerText = winsP2;
gamesLostP2.innerText = losesP2;

startGame.addEventListener("click", function(){
  game = new Game();
  ++gameCount;
  if(gameCount%2===0){
    player2.classList.add("current-player");
    player1.classList.remove("current-player")
  } else {
    player1.classList.add("current-player");
    player2.classList.remove("current-player")
  };
  console.log(game.word);
  game.correctGuesses =[];
  guessesLeft.innerText = 0;
  game.incorrectGuesses = [];
  lettersGuessed.innerText = game.incorrectGuesses;
  var dashes = [];
  for(var i = 0; i < game.word.length; i++){
    dashes.push("_") };
  gameWord.innerText = dashes.join("");
});

giveUp.addEventListener("click", function(){
  gameWord.innerText = game.word;
  guessesLeft.innerText = "Computer wins!";
  if(gameCount%2===0){
    ++losesP2;
    gamesLostP2.innerText = losesP2;
  } else {
    ++losesP1;
    gamesLostP1.innerText = losesP1;
  };
})

var updateCount = function(){
  guessCount = 7 - game.incorrectGuesses.length;
  if(guessCount <= 0) {
    guessCount = "Computer wins!";
      if(gameCount%2===0){
        ++losesP2;
        gamesLostP2.innerText = losesP2;
      } else {
        ++losesP1;
        gamesLostP1.innerText = losesP1;
      };
    gameWord.innerText = game.word;};
  guessesLeft.innerText = guessCount;
};

input.addEventListener("keyup", function(){
  if(guessesLeft.innerText != "Computer wins!"){
    game.play(input.value);
    lettersGuessed.innerText = game.incorrectGuesses;
    updateWord(input.value);
    input.value= null;
    updateCount();
    checkWinner();
  };
});

var checkWinner = function(){
  if(game.correctGuesses.length === game.word.length){
    guessesLeft.innerText = "User Wins!";
      if(gameCount%2===0){
        ++winsP2;
        gamesWonP2.innerText = winsP2;
      } else {
        ++winsP1;
        gamesWonP1.innerText = winsP1;
      };
  }
}

lettersGuessed.innerText + game.incorrectGuesses;

var updateWord = function(letter){
  a = game.word.split("")
  array = gameWord.innerText.split("");
  a.forEach(function(l,i){
    if(l === letter){
      array[i] = letter
    };
  });
  gameWord.innerText = array.join("");
};



// add a games won/lost counter to hang man.
// these reset back to 0/0 when you reset the page.
// add a second player.
// both play against a computer, alternate between players, basically who is winning more games



