describe("hangman", function(){

  describe("has ", function(){
    var hangman = new Hangman("sports")

    it("a word to be guessed", function(){
      expect(hangman.answer).toBeDefined();
      expect(categories[hangman.category]).toContain(hangman.answer.join(""))
    }); //has a word to be guessed

    it("a category", function(){
      expect(hangman.category).toBeDefined;
      expect(categories[hangman.category]).toBeDefined();
    }); //has a category

    it("has a place to store guessed letters", function(){
      expect(hangman.guessedLetters).toBeDefined();
      expect(hangman.guessedLetters.length).toEqual(0);
    }); //has a place to store guessed letters

    it("has a number of guesses remaining", function(){
      expect(hangman.guessesLeft).toBeDefined();
      expect(hangman.guessesLeft).toEqual(7);
    }); //has a number of guesses remaining
  
    it("knows the alphabet", function(){
      expect(alphabet).toBeDefined();
      expect(alphabet).toContain("g");
      expect(alphabet.length).toEqual(26);
      expect(alphabet).not.toContain(1);
    }); //knows the alphabet
  }); //has tests
  describe("#guess", function(){
   var hangman = new Hangman("sports");
   beforeEach(function(){
    hangman.answer = ["b", "a", "a"];
    hangman.guessedLetters = new Array;
    hangman.guessesLeft = 7
    hangman.revealedWord = ["_", "_", "_"]
    hangman.guess("a");
    
   });

    it("decrements guess if the letter isn't included", function(){
      hangman.guess("g");
      expect(hangman.guessesLeft).toEqual(6);
    }); //decrements if wrong

    it("reveals the letter if the letter is included in the answer", function(){
      expect(hangman.revealedWord).toEqual(["_","a","a"]);
    }); //reveals the letter

    it("adds the guess to the guessed letters", function(){
      expect(hangman.guessedLetters).toContain("a");
      expect(hangman.guessedLetters.length).toEqual(1);
    }); //adds the guess to the guessed letters

    it("checks to ensure that the letter hasn't already been guessed", function(){
      hangman.guess("a");
      expect(hangman.guessedLetters).toContain("a");
      expect(hangman.guessedLetters.length).toEqual(1);
    }); //check to ensure that the letter hasn't already been guessed

    it("makes sure it's a letter", function(){
      hangman.guess("1");
      expect(hangman.guessedLetters).not.toContain("1");
      expect(hangman.guessedLetters.length).toBe(1);
    }); //makes sure it's a letter
  }); //guess method
  describe("#lose", function(){
    var hangman= new Hangman("sports");

    it("ends the game if you run out of guesses", function(){
      hangman.guessesLeft = 0;
      hangman.lose();
      expect(hangman.gameOver).toEqual(true);
    }); //lose
  }); //lose

  describe("#win", function(){
    it("wins the game if you get all the letters correct", function(){
      var hangman = new Hangman("sports");
      hangman.revealedWord = ["_", "_", "_"]
      hangman.answer = ["b", "a", "a"];
      hangman.guess("a");
      hangman.guess("b");  
      expect(hangman.revealedWord).not.toContain("_");
      hangman.win();
      expect(hangman.gameOver).toEqual(true);
    });
  }); //win
}); // hangman model