describe("Game", function() {
  var game; //we're binding game in here, bc if
  // we delcare it in the function of beforeEach, 
  // it will not be accessible in functions below.

  beforeEach(function() {
    game = new Game();
  });

  describe("mark", function() {
    beforeEach(function() {
      game.mark("x", {row: 1, column: 1});
    });

    it("places a 'x' or an 'o' in the game", function() {
      expect(game.playAt({row: 1, column: 1})).toEqual("x");
    });

    it("can't play an 'o' over a spot played by 'x'", function() {
      game.mark("o", {row: 1, column: 1});
      expect(game.playAt({row: 1, column: 1})).toBe('x');
      expect(game.turn).toBe('o')
    });

    it("doesn't allow two plays in a row", function() {
      game.mark("x", {row: 2, column: 0});
      expect(game.playAt({row: 2, column: 0})).toBe(undefined);

      game.mark("o", {row: 2, column: 0});
      expect(game.playAt({row: 2, column: 0})).toBe('o');
    }); 

    it("only takes valid marks", function() {
      game.mark("xo", {row: 2, column: 0});
      game.mark("X", {row: 2, column: 0});
      game.mark("O", {row: 2, column: 0});
      game.mark("ke$sha", {row: 2, column: 0});

      expect(game.playAt({row: 2, column: 0})).toBe(undefined);
    });

    it("doesn't play if the game is over", function() {
      spyOn(game, 'gameOver').and.callFake(function() {
        return true;
      });

      expect( function() { game.mark("o", {row: 1, column: 1}); }).toThrowError("game over!");
    });
  });

  describe("gameOver", function() {
    it("is over if the game is won", function() {
      spyOn(game, 'checkWinner').and.callFake(function(){
        return "x";
      });

      expect(game.gameOver()).toBe(true);
    });

    it("is over if there have been 9 turns", function() {
      game.turnNumber = 9;

      expect(game.gameOver()).toBe(true);
    });

    it("is not over when the game starts", function() {
      expect(game.gameOver()).toBe(false);
    });
  });

  describe("checkWinner", function() {
    it("is true if there are three in a row", function() {
      game.board[0][0] = "x";
      game.board[0][1] = "x";
      game.board[0][2] = "x";

      expect(game.checkWinner()).toBe('x');
    });

    it("is true if there are three in a column", function() {

    });

    it("is true if there are three on a diagonal", function() {

    });
  });
});




