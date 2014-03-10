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
});