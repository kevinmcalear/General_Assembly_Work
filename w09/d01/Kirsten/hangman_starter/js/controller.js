var startGame = document.querySelector("button.new-game");
var giveUp = document.querySelector("button.give-up");
var lettersGuessed = document.querySelector("span.guessed-letters");
var guessesLeft = document.querySelector("span.guesses-left");
var input = document.querySelector("#letter");
var gameWord = document.querySelector("div.game-word");


game = new Game();

startGame.addEventListener("click", function(){
  game = new Game();
  console.log(game.word);
  var dashes = [];
  for(var i = 0; i < game.word.length; i++){
    dashes.push("_") };
  gameWord.innerText = dashes.join("");
});

giveUp.addEventListener("click", function(){
  gameWord.innerText = game.word;
  guessesLeft.innerText = "Computer wins!";
})

var updateCount = function(){
  guessCount = 7 - game.incorrectGuesses.length;
  if(guessCount <= 0) {
    guessCount = "Computer wins!"
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
    guessesLeft.innerText = "User Wins!"}
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

