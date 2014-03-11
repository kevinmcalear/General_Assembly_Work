
function Game(word){
  this.word = hangWords[Math.floor(Math.random()*hangWords.length)];
  this.incorrectGuesses = [];
  this.correctGuesses = [];
  this.compare = function(guessLetter){
    if(this.word.search(guessLetter) >= 0){
      var splitWord = this.word.split("");
      for(var i = 0; i<splitWord.length; i++){
        if(guessLetter === splitWord[i]){
          this.correctGuesses.push(guessLetter)
        }
      } return true;
    } else {
      this.incorrectGuesses.push(guessLetter);
      return false;
      };
    };
    this.endGame = function(){
      if(this.incorrectGuesses.length === 7){
        return "computer wins!";
      } else if(this.word.length == this.correctGuesses.length){
        return "user wins!";
    };
  };
  this.play = function(letter){
    this.compare(letter);
    return this.endGame();
  };
};

var hangWords = ["abbey","abruptly","affix","askew","axiom","azure","bagpipes","bandwagon","banjo","bayou","bikini","blitz","bookworm","boxcar","boxful","buckaroo","buffalo","buffoon","cobweb","croquet","daiquiri","disavow","duplex","dwarves","equip","exodus","fishhook","fixable","foxglove","galaxy","galvanize","gazebo","gizmo","glowworm","guffaw","haiku","haphazard","hyphen","icebox","injury","ivory","ivy","jaundice","jawbreaker","jaywalk","jazzy","jigsaw","jiujitsu","jockey","jovial","joyful","juicy","jumbo","kazoo","keyhole","khaki","kilobyte","kiosk","kiwifruit","knapsack","larynx","luxury","marquis","megahertz","microwave","mystify","nightclub","nowadays","numbskull","ovary","oxidize","oxygen","pajama","peekaboo","pixel","pizazz","pneumonia","polka","quartz","quiz","quorum","razzmatazz","rhubarb","rickshaw","schizophrenia","sphinx","spritz","squawk","subway","swivel","topaz","unknown","unworthy","unzip","uptown","vaporize","vixen","vodka","vortex","walkway","waltz","wavy","waxy","wheezy","whiskey","whomever","wimpy","wizard","woozy","xylophone", "yachtsman", "yippee", "youthful", "zephyr", "zigzag","zilch","zodiac","zombie"];