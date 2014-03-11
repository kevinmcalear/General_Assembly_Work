describe("Hangman", function(){
var newGame = new Hangman("Pokemon");

  describe("has", function(){
    it("a set of categories", function(){
      expect(newGame.categories).toBeDefined();
      expect(newGame.categories).toEqual( jasmine.objectContaining({
        Pokemon: ["Pikachu", "Bulbasaur", "Charmeleon", "Machop"]
        }));
    });

    it("categories that have a set of words (strings)", function(){
      expect(newGame.categories["Pokemon"]).toBeDefined();
      expect(newGame.categories.Pokemon).toContain("Pikachu");
    });
    

    it("a set number of initial wrong guesses", function(){
      expect(newGame.wrongGuesses).toBeDefined();
      expect(newGame.wrongGuesses).toBe(7);
    });
  });
  
  describe("on initialization", function(){
    it("takes a category and selects a random word from the category", function(){
      expect(newGame.wordToGuess).toBeDefined();
      expect(newGame.categories.Pokemon).toContain(newGame.wordToGuess);
    });

    it("takes the randomly selected word and creates a string of a series of underscores representing the letters in the original word", function(){
      expect(newGame.wordToGuess.length*2).toEqual(newGame.hiddenWord.length);
    })
  });

  describe("#guess", function(){
    it("takes a letter as input from the user and returns true if the letter is in the wordToGuess", function(){
      expect(newGame.guess("a")).toBeDefined();
      expect(newGame.guess("a")).toBe(true);
      expect(newGame.guess("x")).toBe(false);
    });

    it("decrements from the wrongGuesses counter if guess() returns false", function(){
      newGame.guess("x");
      expect(newGame.wrongGuesses).toEqual(5);
    });

    it("replaces the underscore in hiddenWord that is a stand-in for a particular letter when that letter is correctly guessed by the player", function(){
      newGame.guess("a");
      expect(newGame.hiddenWord).toContain("a");
    });
  });
});