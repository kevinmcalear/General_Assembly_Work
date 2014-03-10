// A word is input upon generation
// letters are guessed one at a time
// a counter keeps track of 

describe ("Hangman", function(){

  describe("game", function(){
    var game = new Hangman("yellowpencil");

    it("can return the word", function(){
      expect(game.word).toBe("yellowpencil");
    });

    it ("can count the letters in the word", function(){
      expect(game.wordCount).toBe(12);
    });

    it ("returns the position of the letter if in the word", function(){
      expect(game.guess("y")).toBe(0);
    });

    it ("returns false if the letter is not in the word", function(){
      expect(game.guess("z")).toBe(false);
    });

    it ("stores the letters you have guessed", function(){
      
    });

  });
});