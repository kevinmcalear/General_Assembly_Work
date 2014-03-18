describe("#categoryToWord",function() {
  
  it("produces a word",function(){
    categoryToWord("test")
    expect( userGame.word  ).toBe("test")
  });

}); 

describe("Game", function(){

  describe("has",function(){
    var game = new Game("banana")

    it("a guess count", function(){
      expect(game.guessCount).toBe(7);
    });

    it("a wrong letter guess", function(){
      expect(game.wrongLetterGuess).toEqual([])
    });

    it("a word",function(){
      expect(game.word).toBe("banana")
    });
    
    it("a word guess",function(){
      expect(game.wordGuess).toBe("******")
    });

  });

});


describe("User Guesses a Letter", function(){
  var game = new Game("banana")


  it("#guessAllowed",function(){
    expect(game.guessAllowed("A")).toBe(true);
    expect(game.guessAllowed("AA")).toBe(false);
    expect(game.guessAllowed("2")).toBe(false);
  });

  it("#guessCorrect",function(){
    expect(game.guessCorrect("b")).toBe(true);
    expect(game.guessCorrect("x")).toBe(false);
  });

  it("#guessIncorrectUpdate",function(){
    game.decrementGuessCount();
    expect(game.guessCount ).toBe(5);
  });


  it("#guessCorrectUpdate",function(){
    expect(game.updateWordGuess("b") ).toBe("b*****");
  });

  


});


describe("User wins a Game", function(){
  var game = new Game("banana")

  it("#determineGame",function(){

  });


});

