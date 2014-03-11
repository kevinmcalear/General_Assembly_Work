
describe("Hangman", function(){

  describe("new game", function(){
    
    var hangman = new Hangman()

    it("guessed letters is an array of strings", function(){
      hangman.guessLetter("b");
      expect(hangman.guessedLetters).toBeDefined();
      expect(hangman.guessedLetters).toContain("b");
      expect(hangman.guessedLetters.length).toBe(1); 
    });

     it("decreases guesses by 1", function(){
      expect(hangman.guesses).toBe(6);

    });

     it("checks to see if word contains guessed letter", function(){
      hangman.guessLetter("c")
      hangman.guessLetter("a")
      expect(hangman.correctLetters).toContain("c");
      expect(hangman.guesses).toBe(6); 
      expect(hangman.correctLetters.length).toBe(2);
     })
  });

 describe("loser", function(){
    
    var hangman = new Hangman();

     it("ends the game", function(){
      hangman.guessLetter("g")
      hangman.guessLetter("w")
      hangman.guessLetter("l")
      hangman.guessLetter("k")
      hangman.guessLetter("h")
      hangman.guessLetter("n")
      hangman.guessLetter("v")
      expect(hangman.guesses).toBe(0)
      expect(hangman.gameStatus()).toBe("Game Over")
     });
  });

  describe("winner", function(){
      
    var hangman = new Hangman();

    it("wins the game", function(){
      hangman.guessLetter("c")
      hangman.guessLetter("a")
      hangman.guessLetter("t")
      hangman.gameStatus
      expect(hangman.correctLetters).toEqual(["c","a","t"])
    })
  });

});