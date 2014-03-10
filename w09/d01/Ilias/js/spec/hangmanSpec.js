// A word is input upon generation
// letters are guessed one at a time
// a counter keeps track of 

describe ("Hangman", function(){
  var game = new Hangman("yellow");

  it("can return the word", function(){
    expect(game.word).toBe("yellow");
  });

  it ("can count the letters in the word", function(){
    expect(game.wordCount).toBe(6);
  });

  it ("returns true if the letter is in the word", function(){
    expect(game.guess("y")).toBe(true);
  });

  it ("returns false if the letter is not in the word", function(){
    expect(game.guess("z")).toBe(false);
  });

  it ("stores the letters you have guessed", function(){
    expect(game.guessedLetters).toContain("y" && "z");
    expect(game.guessedLetters).not.toContain("a");
  });

  it ("ends the game after they have guessed seven times", function(){
    game.guess("a");
    game.guess("b");
    game.guess("c");
    game.guess("d");
    expect(game.guess("f")).toBe("You lose!");
  });

  var game2 = new Hangman("red");

  it("congratulates the user on winning the game when guessing the correct letters", function(){
    game2.guess("r");
    game2.guess("e");
    expect (game2.guess("d")).toBe("You win!");
  });

  var game3 = new Hangman("green");

  it("finds all letters in the word", function(){
    game3.guess("g");
    game3.guess("r");
    game3.guess("e");
    expect(game3.guess("n")).toBe("You win!");
  });

  var game4 = new Hangman("blue");
  it("doesn't do anything if you guess the same letter twice", function(){
    game4.guess("b");
    game4.guess("b");
    expect(game4.guessedLetters.length).toBe(1);
  });



});