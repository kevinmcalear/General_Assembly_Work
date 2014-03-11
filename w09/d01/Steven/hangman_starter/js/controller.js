var startGame = document.querySelector("button.new-game");
var giveUp = document.querySelector("button.give-up");
var lettersGuessed = document.querySelector("span.guessed-letters");
var guessesLeft = document.querySelector("span.guesses-left");
var input = document.querySelector("input#letter");
var gameWord = document.querySelector("div.game-word");

var player1 = document.getElementById("player1");
var player2 = document.getElementById("player2");

var gamesWonP1 = document.querySelector("span.games-won-p1");
var gamesLostP1 = document.querySelector("span.games-lost-p1");
var gamesWonP2 = document.querySelector("span.games-won-p2");
var gamesLostP2 = document.querySelector("span.games-lost-p2");

var p1wins = 0;
var p1losses = 0;

var p2wins = 0;
var p2losses = 0;

gamesWonP1.innerText = p1wins;
gamesLostP1.innerText = p1losses;

gamesWonP2.innerText = p2wins;
gamesLostP2.innerText = p2losses;

var gameCounter = 0;

game = new Game();

  startGame.addEventListener("click", function(){
    gameCounter += 1;
    player1.classList.remove("player");
    player2.classList.remove("player");

    if(gameCounter % 2 === 0){
      player1.classList.add("player");
    } else {
      player2.classList.add("player");
    }
    console.log(gameCounter);
    console.log(game.word);
    game.correctGuesses = [];
    game.incorrectGuesses = [];
    lettersGuessed.innerText = game.incorrectGuesses;
    guessesLeft.innerText = 7;
    input.value = null;
    var dashes = [];
    for(var i = 0; i < game.word.length; i++){
      dashes.push("_")};
    gameWord.innerText = dashes.join("");
    });

  var updateCount = function(){
    guessCount = 7 - game.incorrectGuesses.length;
    if(guessCount <= 0){
      guessCount = "Computer Wins!";
      gameWord.innerText = game.word;
      if(gameCounter%2 === 0){
        p1losses += 1;
        gamesLostP1.innerText = p1losses;
      } else {
        p2losses += 1;
        gamesLostP2.innerText = p2losses;
      }
    }
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
    }
  });
  gameWord.innerText = array.join("");
};

var checkWinner = function(){
  if(game.correctGuesses.length == game.word.length){
    gameWord.innerText = "YOU WIN!!!!!";
    if(gameCounter%2 === 0){
        p1wins += 1;
        gamesWonP1.innerText = p1wins;
      } else {
        p2wins += 1;
        gamesWonP2.innerText = p2wins;
      }
    
  };
};

giveUp.addEventListener("click", function(){
  guessesLeft.innerText = "Computer Wins!";
  if(gameCounter%2 === 0){
        p1losses += 1;
        gamesLostP1.innerText = p1losses;
      } else {
        p2losses += 1;
        gamesLostP2.innerText = p2losses;
      }
});


//add a games won/lost counter
//add a second player

