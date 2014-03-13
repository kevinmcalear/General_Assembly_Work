describe("Hangman", function(){
  var word;
  var guessesLeft;

  beforeEach(function() {
    word = "motherboard";
    game = new Game(word);
  });

  it("starts a game", function(){
    expect(game.word).toEqual("motherboard");
  });

  it("always starts with 7 guesses", function(){
    expect(game.guessesLeft).toEqual(6);
  });

  it("stores guesses in an array", function(){
    expect(game.guesses).toEqual([]);
  });

  it("takes letter guesses", function(){
    game.guess("a");
    expect(game.guesses).toEqual(["a"]);
  });

  it("only decreases guesses left when there is an incorrect guess", function(){
    game.guess("w");
    expect(game.guessesLeft).toEqual(5);
  });

  it("doesn't decrease guesses left when there is an correct guess", function(){
    game.guess("a");
    expect(game.guessesLeft).toEqual(6);
  });

  it("adds correct letter to correctGuesses array", function(){
    game.guess("a");
    expect(game.correctGuesses).toEqual(["_", "_", "_", "_","_","_", "_", "_", "a", "_", "_"]);
  });

  it("adds incorrect letter to incorrecGuesses array", function(){
    game.guess("w");
    expect(game.incorrectGuesses).toEqual(["w"]);
  });

  it("ends a game when all correct letter are guessed", function(){
    game.guess("m");
    game.guess("o");
    game.guess("t");
    game.guess("h");
    game.guess("e");
    game.guess("r");
    game.guess("b");
    game.guess("a");
    game.guess("d");
    expect(game.end).toBe(true);
  });

  it("ends a game when guessesLeft is 0", function(){
    game.guess("x");
    game.guess("z");
    game.guess("q");
    game.guess("w");
    game.guess("n");
    game.guess("c");
    game.guess("d");
    game.guess("g");
    expect(game.end).toBe(true);
  });

  it("doesn't end a game when guessesLeft is > 0", function(){
    game.guessesLeft = 2;
    expect(game.end).toBe(false);
  });


});