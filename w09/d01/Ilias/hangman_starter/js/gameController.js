//Setup
var hangWords = ["abbey","abruptly","affix","askew","axiom","azure","bagpipes","bandwagon","banjo","bayou","bikini","blitz","bookworm","boxcar","boxful","buckaroo","buffalo","buffoon","cobweb","croquet","daiquiri","disavow","duplex","dwarves","equip","exodus","fishhook","fixable","foxglove","galaxy","galvanize","gazebo","gizmo","glowworm","guffaw","haiku","haphazard","hyphen","icebox","injury","ivory","ivy","jaundice","jawbreaker","jaywalk","jazzy","jigsaw","jiujitsu","jockey","jovial","joyful","juicy","jumbo","kazoo","keyhole","khaki","kilobyte","kiosk","kiwifruit","knapsack","larynx","luxury","marquis","megahertz","microwave","mystify","nightclub","nowadays","numbskull","ovary","oxidize","oxygen","pajama","peekaboo","pixel","pizazz","pneumonia","polka","quartz","quiz","quorum","razzmatazz","rhubarb","rickshaw","schizophrenia","sphinx","spritz","squawk","subway","swivel","topaz","unknown","unworthy","unzip","uptown","vaporize","vixen","vodka","vortex","walkway","waltz","wavy","waxy","wheezy","whiskey","whomever","wimpy","wizard","woozy","xylophone", "yachtsman", "yippee", "youthful", "zephyr", "zigzag","zilch","zodiac","zombie"];

//Selectors
var guessInput = document.querySelector("aside input[id=letter]");
var newGameButton = document.querySelector("section button.new-game");
var lettersGuessedAlready = document.querySelector("aside div span.guessed-letters");
var gameWord = document.querySelector("div.game-word");
var guessesLeft = document.querySelector("section.game-play figure span.guesses-left");

//On Load
window.onload = newGame;


//Event Listeners

  //new game
  newGameButton.addEventListener("click", newGame);

  //guessing a letter
  guessInput.addEventListener("keyup", function(){
    var letter = guessInput.value;
    var guessResult = game.guess(letter);
    var correctLetters = game.correctLetters;
    var updatedCorrectLetters = makePlaceholders().split(" ");
    var guessedLetters = game.guessedLetters;
    var remainingGuesses = (7 - game.incorrectLetters.length);
    
    guessInput.value = null;
    //update remaining guesses
    guessesLeft.innerText = remainingGuesses;
    //update letters guessed
    lettersGuessedAlready.innerText = guessedLetters.join(" ");
    //update gameword
    for (i = 0; i < correctLetters.length; i++ ){
      if (correctLetters[i] !== undefined){
        updatedCorrectLetters[i] = correctLetters[i];
      }
    }

    if (remainingGuesses !== 0 ){
      if (guessResult === "win"){
        gameWord.innerText = "You Win!" + " The word was " + game.word;
      } else {
        gameWord.innerText = updatedCorrectLetters.join(" ");
      }
    } else {
      gameWord .innerText = "You Lose!";
    }

  });