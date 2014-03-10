// hangmanSpec.js
  
describe("Hangman", function() {

  var hangman = new Hangman("basketball");

  it("is a game", function() {
    expect(hangman.game()).toBe(true);
  });

  it("starts with 7 guessesLeft", function() {
    expect(hangman.guessesLeft).toBe(7);
  })

  it("can return the word", function() {
    expect(hangman.word).toBe("basketball");
  })

  describe("countLetters", function() {
    it("takes a work and returns the number of letters", function() {
      var word = "basketball";    
      expect(hangman.countLetters(word)).toBe(10);
    });
  });

  describe("checkLetter", function() {
    xit("takes a letter as an argument and returns the number of times that letter appears in the word", function(){
      expect(hangman.checkLetter('b', hangman.word)).toBe(2);
    })
    it("reveals the correctly guessed letters positions in an array", function() {
      expect(hangman.checkLetter('b', hangman.word)).toEqual(['b', '_', '_', '_', '_', '_', 'b', '_', '_', '_']);
    })
    xit("subtracts one from guesses if word does not include guessed letter & includes the letter in misses array", function() {
      hangman.checkLetter('c', hangman.word);
      expect(hangman.guessesLeft).toBe(6);
      expect('c').toContain(hangman.misses);
      console.log(hangman.misses);
    })
    it("won't let you guess a letter which has already been guessed", function() {
      hangman.checkLetter('c', hangman.word);
      expect(hangman.guessesLeft).toBe(6);
      hangman.checkLetter('c', hangman.word);
      expect(hangman.guessesLeft).toBe(6);
    })

    it("ends the game if guessesLeft reaches 0", function() {
      hangman.checkLetter('c', hangman.word);
      hangman.checkLetter('d', hangman.word);
      hangman.checkLetter('x', hangman.word);
      hangman.checkLetter('y', hangman.word);
      hangman.checkLetter('z', hangman.word);
      hangman.checkLetter('u', hangman.word);
      hangman.checkLetter('f', hangman.word);
      expect(hangman.game).toBe(false);
    })
  
  }) 
});

