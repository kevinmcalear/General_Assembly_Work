describe("Hangman", function(){
  describe ("has", function(){
    var hangman = new Hangman({word: "beetlejuice", category: "movies"});

    it("word is defined, a string", function(){
      expect(hangman.word).toBeDefined();
      hangman.word = "300";
      expect(hangman.word).toBe("300");
    });

    it("category is defined, a string", function(){
      expect(hangman.category).toBeDefined();
      hangman.category = "thriller";
      expect(hangman.category).toBe("thriller");
    });
    
    it("a guessLetter method", function(){
      expect(hangman.guessLetter).toEqual(jasmine.any(Function));
    });
    //not quite sure how this works
  });
  
  describe("on initialization", function(){
    it("takes an object as an argument and sets up the game", function(){
      var hangman = new Hangman({word: "belt", category: "clothes"});
      expect(hangman.word).toBe("belt");
      expect(hangman.category).toBe("clothes");
    });
    it("the object is optional", function(){
      var hangman = new Hangman();
      expect(hangman.word).toBe("");
      expect(hangman.category).toBe("");
    });
  });

  describe("#guessLetter", function(){
    //why declare var first?
    var hangman;
    beforeEach(function(){
      cb = new Hangman({word: "casablanca", category:"movies"});
    });

    it("returns true if letter is in word", function(){
      expect(cb.guessLetter("b")).toBe(true);
    });

    it("returns false if letter is not in word", function(){
      expect(cb.guessLetter("x")).toBe(false);
    });

    it("uncovers the letter", function(){
      cb.guessLetter("c");
      expect(cb.covered).toBe("c_______c_");
    });

  });
});











