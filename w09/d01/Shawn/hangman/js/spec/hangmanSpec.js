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


  describe("checkLetter", function() {
    it("reveals the correctly guessed letters positions in an array", function() {
      expect(hangman.checkLetter('b', hangman.word)).toEqual(['b', '_', '_', '_', '_', '_', 'b', '_', '_', '_']);
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

    it("lets you know if you won the game", function() {
      hangman.checkLetter('b', hangman.word);
      hangman.checkLetter('a', hangman.word);
      hangman.checkLetter('s', hangman.word);
      hangman.checkLetter('k', hangman.word);
      hangman.checkLetter('e', hangman.word);
      hangman.checkLetter('t', hangman.word);
      expect(hangman.checkLetter('l', hangman.word)).toEqual("You Win.  The word is basketball");
    }) 
  
  }) 
});

describe("#wordPicker", function() {
    it("randomly picks a word from the user selected category", function() {
    expect(pickWord("sports")).toEqual('basketball');
  }) 
})

