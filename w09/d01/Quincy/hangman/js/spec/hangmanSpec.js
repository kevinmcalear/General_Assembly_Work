describe("Hangman", function() {
  describe("has", function() {
  var hangman1 = new Hangman({secretWord: "blowfish"});

    it("has a secret word that's always a string", function() {
      expect(hangman1.secretWord).toBeDefined();
      expect(hangman1.secretWord).toBe("blowfish");
    });

    it("has to know how many guesses you have left", function() {
      expect(hangman1.guessesLeft).toBeDefined();
      expect(hangman1.guessesLeft).toBe(7);
    });

    it("has a list of wrong guessed letters", function() {
      hangman1.guess("p");
      expect(hangman1.wrongLetters).toContain("p");
    });

    it("has a list of rightly guessed letters", function() {
      hangman1.guess("b");
      expect(hangman1.rightLetters[0]).toContain("b");

    });

    it("has a game status", function() {
      expect(hangman1.status).toBeDefined();
      expect(hangman1.status).toBe("playing");
    });
  });

  describe("guesses", function() {
    var hangmanGuess = new Hangman({secretWord: "beluga"});

    it("subtracts one guess when the player makes a guess", function() {
      hangmanGuess.guess("r");
      expect(hangmanGuess.guessesLeft).toBe(6);
    });

    it("ends the game when you get to zero guesses", function() {
      var stupidGuesses = ["r", "t", "z", "x", "q", "m", "f"];
      for(var i = 0; i < 7; i++) {
        hangmanGuess.guess(stupidGuesses[i]);
      };
      expect(hangmanGuess.status).toBe("lost");
    });

    it("does not keep playing with 0 guesses", function() {
      var stupidGuesses = ["r", "t", "z", "x", "q", "m", "f"];
      for(var i = 0; i < 7; i++) {
        hangmanGuess.guess(stupidGuesses[i]);
      };
      hangmanGuess.guess("c");
      expect(hangmanGuess.wrongLetters).not.toContain("c");
    });
  });
});
