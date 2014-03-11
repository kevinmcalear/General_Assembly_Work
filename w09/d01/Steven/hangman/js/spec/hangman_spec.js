describe("Game", function(){

  describe("has", function(){
    var game = new Game("curling");

    it("a property word that is a string", function(){
      expect(game.word).toBe("curling");
    });

    it("a property correctGuesses that is an array", function(){
      expect(game.correctGuesses).toEqual([]);
    });

    it("a property incorrectGuesses that is an array", function(){
      expect(game.incorrectGuesses).toEqual([]);
    });

    it("a comparison method", function(){
      expect(game.hasOwnProperty("compare")).toBe(true);
    });
  });

  describe("compare", function(){
    var game1 = new Game("curling");
    var game2 = new Game("ball");

    it("compares a letter to the word", function(){
      expect(game1.compare("c")).toBe(true);
    });

    it("works for multiple letters", function(){
      expect(game2.compare("l")).toBe(true);
      expect(game2.correctGuesses).toEqual(["l","l"]);
    });

    it("works for an incorrect letter", function(){
      expect(game1.compare("b")).toBe(false);
      expect(game1.incorrectGuesses).toEqual(["b"]);
    });

  });

  describe("endGame", function(){
    var game1 = new Game("ball");

    it("returns when the game is done", function(){
      game1.correctGuesses = ["b", "a", "l", "l"];
      expect(game1.endGame()).toBe("user wins!")
    });
  });
});