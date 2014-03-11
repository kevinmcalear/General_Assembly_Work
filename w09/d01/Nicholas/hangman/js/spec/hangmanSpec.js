describe ("Hangman", function() {

  describe("has", function() {

    var game = new Hangman();
    game.gameWord = "lizard";

    it("a property to choose word to be played", function() {
      expect(game.gameWord).toBe("lizard");
    });

    it("a counter property", function() {
      expect(game.attemptCounter).toBe(7);
    });
  });
});

describe ('guess', function() {
  game = new Hangman();
  game.gameWord = "lizard";

  it("checks for correct letter", function() {
    expect(game.guess('a')).toBe(true);
  });

  it("moves counter down if user guess is not found", function() {
    game.guess('x');
    expect(game.attemptCounter).toBe(6);
  });

  it("moves counter down if user guess is not found", function() {
    game.guess('h');
    expect(game.attemptCounter).toBe(5);
  });

  it("ends the game if the counter gets to zero", function() {
    game.guess('q');
    game.guess('q');
    game.guess('q');
    game.guess('q');
    game.guess('q');
    game.guess('q');
    expect(game.attemptCounter).toBe(7);
  });
});

describe ('giveUp', function() {
  game = new Hangman();
  game.gameWord = "lizard";

  it("allow the user to give up the game", function(){
    game.guess("q");
    game.giveup();
    expect(game.attemptCounter).toBe(7);
  });
});

describe ('guesses left', function(){
  game = new Hangman();
  game.gameWord = "lizard";
  game.guess('q');
  expect(guessesleft.innerText).toBe(6);
});

