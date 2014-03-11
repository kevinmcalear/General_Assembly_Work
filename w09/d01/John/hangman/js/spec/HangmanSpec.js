describe ("Hangman", function(){

  describe("has ", function(){
    var hangman = new Hangman();

    it("a get word method", function(){
      expect(hangman.getWord).toBeDefined();
    });

  });

  describe("on initialization", function(){
    var hangman = new Hangman("animals");
    beforeEach(function(){
      spyOn(Math, "random").and.returnValue(0.5);
    });
    
    it("takes a category as an argument that sets up the game", function(){
      expect(hangman.getWord()).toEqual("dolphin");
    });

    it("makes an array from the selected word", function(){
      hangman.makeLetters();
      expect(hangman.wordLetters.length).toEqual(7);
    });

    it("makes an array of spaces", function(){
      hangman.makeSpaces();
      expect(hangman.spaces.length).toEqual(7);
    });

    it("starts with 7 wrong guesses", function() {
      expect(hangman.wrongGuesses).toEqual(7);
    });
  });

  describe("checkGuess", function(){
    var hangman = new Hangman("animals");
    beforeEach(function(){
      spyOn(Math, "random").and.returnValue(0.5);
    });
    
    it ("checks if the guess is right", function(){
      hangman.makeLetters();
      hangman.makeSpaces();
      hangman.checkGuess("d");
      expect(hangman.spaces[0]).toEqual("d");
      expect(hangman.spaces[1]).toEqual("_");
      expect(hangman.guessedLetters).toContain("d");
    });

    it ("checks if the guess is wrong", function(){
      hangman.checkGuess("s");
      expect(hangman.spaces).toEqual(["d", "_", "_", "_", "_", "_", "_"]);
      expect(hangman.wrongGuesses).toEqual(6);
      expect(hangman.guessedLetters).toContain("s");
    });

    it ("doesn't let you check letters more than once", function(){
      hangman.checkGuess("s");
      expect(hangman.guessedLetters).toEqual(["d","s"]);
    });

  });

  describe("gameOverTest", function(){
    var hangman = new Hangman("animals");
    beforeEach(function(){
      spyOn(Math, "random").and.returnValue(0.5);
    });
    it ("user wins", function() {
      hangman.makeLetters();
      hangman.makeSpaces();
      hangman.spaces = ["d", "o", "l", "p", "h", "i", "_"];
      hangman.checkGuess("n");
      hangman.checkGuess("z");
      expect(hangman.wrongGuesses).toEqual(7);
    });

    it ("user loses", function() {
      hangman.wrongGuesses = 1;
      hangman.checkGuess("z");
      expect(hangman.spaces).toEqual(["d", "o", "l", "p", "h", "i", "n"]);
      expect(hangman.gameinProgress).toBeFalsy;
    });
  });

  describe("game controls", function(){
    var hangman = new Hangman("animals");
    // beforeEach(function(){
    // });
    it ("lets you give up", function(){
      spyOn(Math, "random").and.returnValue(0.5);
      hangman.makeLetters();
      hangman.makeSpaces();
      hangman.giveUp();
      expect(hangman.spaces).toEqual(["d", "o", "l", "p", "h", "i", "n"]);
      expect(hangman.gameinProgress).toBeFalsy;
    });

    it ("lets you start a new game", function() {
      var hangman = new Hangman("animals");
      spyOn(Math, "random").and.returnValue(0.2);
      hangman.hangmanSetup();
      expect(hangman.wordLetters.length).toEqual(8);
      expect(hangman.spaces).toEqual(["_", "_", "_", "_", "_", "_", "_", "_"]);
      expect(hangman.guessedLetters.length).toEqual(0);
    });

  });



});