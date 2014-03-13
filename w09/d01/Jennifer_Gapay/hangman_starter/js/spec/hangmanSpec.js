describe("Hangman", function(){

  describe("starts a game", function(){
    it("generate a word to guess", function(){
      var wordList = ["one","two","three"];
      var hangMan = new Hangman(wordList);
      expect(wordList).toContain(hangMan.secretWord);
    });
  });

  describe("can guess a letter", function(){
    it("adds letters to the letter list when guessed", function(){
      var hangMan = new Hangman(["philipisgreat"]);
      hangMan.guessLetter("p");
      hangMan.guessLetter("i");
      expect(hangMan.letterList).toEqual(["p", "i"]);
    });
    it("if it is in the word it replaces underscores in the secret word", function(){
      var hangMan = new Hangman(["philipisgreat"]);
      hangMan.guessLetter("p");
      hangMan.guessLetter("i");
      expect(hangMan.hiddenWord).toBe("p_i_ipi______");
    });
    it("if it is not in the word, decrease the number of guesses", function(){
      var hangMan = new Hangman(["philipisgreat"]);
      expect(hangMan.guessesLeft).toBe(7);
      hangMan.guessLetter("p");
      hangMan.guessLetter("j");
      expect(hangMan.guessesLeft).toBe(6);
    });
    it("if it reveals the last letter in a word, the game is won", function(){
      var hangMan = new Hangman(["philipisgreat"]);
      this.hiddenWord === this.secretWord;
      expect(hangMan.youWon).toMatch("You Won!")
    });

    it("if you have guessed the maximum number of wrong times, the game is lost", function(){
      var hangMan = new Hangman(["philipisgreat"]);
      this.guessesLeft = 0;
      expect(hangMan.youLost).toMatch("You Lost!")
    });
  });

  describe("can print the secret word", function(){
    it("prints out underscores for the secret word", function(){
      var hangMan = new Hangman(["philipisgreat"]);
      expect(hangMan.hiddenWord).toBe("_____________");
    });
  });

});