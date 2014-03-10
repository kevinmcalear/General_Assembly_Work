var gameWord = document.querySelector('.game-word');
var guesses = document.querySelector('.guesses-left');
var giveUp = document.querySelector('#give-up');
var newGame = document.querySelector('#new-game');
var guessedLetters = document.querySelector('.guessed-letters');

var hangman1 = new Hangman({});



var input = document.querySelector('#letter');
gameWord.innerText = hangman1.visibleWord;
guesses.innerText = hangman1.guessesLeft;

var play = function(  ) {
  if (hangman1.status === "playing") {
    hangman1.guess(input.value);

    console.log(hangman1.visibleWord);
    console.log(hangman1.guessesLeft);

    var letters = hangman1.allGuesses;
    guessedLetters.innerText = letters.join(" ");
    gameWord.innerText = hangman1.visibleWord;
    guesses.innerText = hangman1.guessesLeft;
    input.value = "";

  if (hangman1.status === "won") {
    alert("You won!");
  }
}
};

var fail = function() {
  gameWord.innerText = hangman1.secretWord;
  guesses.innerText = 0;
  hangman1.status = "lost";
  input.value = "";
}

var reload = function() {
  document.location.reload(true);
};

input.addEventListener('keyup', play);
input.addEventListener('keyup', function() {input.value = ""});
giveUp.addEventListener('click', fail);
newGame.addEventListener('click', reload);

