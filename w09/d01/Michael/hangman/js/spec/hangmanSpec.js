describe("#categoryToWord",function() {
  var dictionary = {
    "sports": ["basketball"],
    "food": ["eggs", "nachos"]
  } 
  
  it("produces a word",function(){
    expect( categoryToWord("sports") ).toBe("basketball")
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
    expect(guessAllowed("A")).toBe(true);
    expect(guessAllowed("AA")).toBe(false);
    expect(guessAllowed("2")).toBe(false);
  });

  it("#guessCorrect",function(){
    expect(game.guessCorrect("b")).toBe(true);
    expect(game.guessCorrect("x")).toBe(false);
  });

  it("#guessIncorrectUpdate",function(){
    game.decrementGuessCount();
    expect(game.guessCount ).toBe(6);
  });


  it("#guessCorrectUpdate",function(){
    expect(game.updateWordGuess("b") ).toBe("b*****");
  });

  


});
