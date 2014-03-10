// hangmanSpec.js
  
describe("Hangman", function() {
  var hangman = new Hangman();
  // hangman.words = ["one", "two", "three", "four", "five"]
  it("is a game", function() {
    expect(hangman.game()).toBe(true);
  })
  
  describe("words", function(){
    it("is a list of words", function() {
      expect(hangman.words()).toBe(Array)
    })
  })  


})


  describe("countLetters", function() {
    it("takes a work and returns the number of letters", function() {
      var word = "basketball";    
      expect(countLetters(word)).toBe(10);
    })
  });