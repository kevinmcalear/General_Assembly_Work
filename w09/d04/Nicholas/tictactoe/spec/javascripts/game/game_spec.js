describe("Game", function() {
  var game;

  beforeEach(function() {
    game = new Game();
  });

  describe("mark", function() {
    beforeEach(function() {
      game.mark("x", {row: 0, column: 0});
    });

    it("places an x or o on the board", function() {
      expect(game.playAt( {row: 0, column: 0} )).toBe("x");
    });
    
    it("cannot overwrite a play", function() {
      game.mark("o", {row: 0, column: 0});
      expect(game.playAt( {row: 0, column: 0} )).toBe("x");
      expect(game.turn).toBe("o");
    });

    it("can't play the same mark twice in a row", function(){
      game.mark("x", {row: 1, column: 1});
      expect(game.playAt( {row: 1, column: 1} )).toBe(undefined);
      
      game.mark("o", {row: 1, column: 1});
      expect(game.playAt( {row: 1, column: 1} )).toBe("o");
    });

    it("only takes valid marks", function() {
      game.mark("X", {row: 1, column: 1});
      game.mark("xo", {row: 1, column: 1});
      game.mark("O", {row: 1, column: 1});
      game.mark("sadf", {row: 1, column: 1});
 
      expect(game.playAt( {row: 1, column: 1} )).toBe(undefined);
    });

    it("doesn't play if the game is over", function() {
      spyOn(game, 'gameOver').and.callFake(function() {
        return true;
      });

      expect( function() { game.mark("o", {row: 1, column: 1}); }).toThrowError("game over!");
    });

    it("increments the turn number", function(){
      game.mark("o", {row: 1, column: 2});
      expect(game.turnNumber).toBe(2);
    });

    it("doesn't increment the turn number if clicking on an already chosen square", function(){
      game.mark("o", {row: 1, column: 2});
      game.mark("o", {row: 1, column: 2});
      expect(game.turnNumber).toBe(2);
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

      expect(game.checkWinner()).toBe("x");
    });

    it("is true if there are three in a column", function() {
      game.board[0][0] = "x";
      game.board[1][0] = "x";
      game.board[2][0] = "x";

      expect(game.checkWinner()).toBe("x");
    });

    it("is true if there are three on a diagonal", function() {
      game.board[0][0] = "x";
      game.board[1][1] = "x";
      game.board[2][2] = "x";

      expect(game.checkWinner()).toBe("x");

      game.board[0][2] = "o";
      game.board[1][1] = "o";
      game.board[2][0] = "o";

      expect(game.checkWinner()).toBe("o");
    });
  });
});
