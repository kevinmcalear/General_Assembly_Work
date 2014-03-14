describe("Hangman", function(){

    describe("new game", function(){
      var hangman = new Hangman();
        hangman.guessLetter("b");

      it("guessed letters property is an array of strings", function(){
        expect(hangman.guessedLetters).toBeDefined();
        expect(hangman.guessedLetters).toContain("b");
        expect(hangman.guessedLetters.length).toBe(1);
      });

      it("decreases guesses by 1", function (){
        expect(hangman.guesses).toBe(6);
      });

      it("checks to see if word contains guessed letter", function () {
        hangman.guessLetter("c");
        hangman.guessLetter("a");
        expect(hangman.correctLetters).toContain("c");
        expect(hangman.guesses).toBe(6);
        expect(hangman.correctLetters.length).toBe(2);
      });

      //it("checks to see if the correctly guessed letter is in the right position", function() {
        //hangman.guessLetter("a");
        //expect(hangman)
      //});
    describe("loser", function(){
      var hangman = new Hangman();
      hangman.guessLetter("b");
        it("ends the game", function() {
          hangman.guessLetter("w");
          hangman.guessLetter("l");
          hangman.guessLetter("k");
          hangman.guessLetter("h");
          hangman.guessLetter("n");
          hangman.guessLetter("v");
          expect(hangman.guesses).toBe(0);
          expect(hangman.gameStatus()).toBe("Game Over")
      });
    });
    

    describe ("winner", function(){
      it("wins the game", function(){
        var hangman = new Hangman();
        hangman.guessLetter("c");
        hangman.guessLetter("a");
        hangman.guessLetter("t");
        expect(hangman.gameStatus()).toBe("You won");
        expect(hangman.correctLetters).toEqual(["c","a","t"]);

      });
    });

  });

});
