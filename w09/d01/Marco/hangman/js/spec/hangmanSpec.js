describe ("Hangman", function() {

  describe("has", function() {

    var hangman = new Hangman();
    hangman.gameWord = "lizard";

    it("a property to choose word to be played", function() {
      expect(hangman.gameWord).toBe("lizard");
    });

    it("a counter property", function() {
      expect(hangman.attemptCounter).toBe(7);
    });

    xit("ends game if attemptCounter reaches zero", function() {
      hangman.attemptCounter = 1;
      hangman.guess('x');
      expect(hangman.killSwitch).toBe(true);
    });
  });
});

describe ('guess', function() {
  var hangman = new Hangman();
  hangman.gameWord = "lizard";

  it("a checking property for correct letter", function() {
    expect(hangman.guess('a')).toBe(true);
  });

  it("moves counter down if user guess is not found", function() {
    hangman.guess('x');
    expect(hangman.attemptCounter).toBe(6);
  });

  it("moves counter down if user guess is not found", function() {
    hangman.guess('h');
    expect(hangman.attemptCounter).toBe(5);
  });
});


