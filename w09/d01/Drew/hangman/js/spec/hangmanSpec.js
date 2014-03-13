describe("Hangman", function(){

  describe("on initialization ", function(){
    it("initializes with a new word", function(){
    var testWord = new Hangman("Taxi");
    expect(testWord.word).toBe("Taxi");
    expect(testWord.guessCount).toBe(7);
    });
    it("")


  });
});