describe("Game", function() {
  var game;

  beforeEach(function() {
    game = new Game;
  });

  describe("mark", function(){
    beforeEach(function(){
      game.mark("x", {row: 0, column: 0} );
    });

    it("places an x or an o on the board", function(){
      expect(game.playAt( {row: 0, column: 0} )).toBe("x");
    });

    it("cannot overwrite a play", function(){
      game.mark("o", {row: 0, column: 0} );
      expect(game.playAt( {row: 0, column: 0} )).toBe("x");
      expect(game.turn).toBe("o");
    });

    it("can't mark the same play twice in a row", function(){
      game.mark("x", {row: 1, column: 1});
      expect(game.playAt( {row: 1, column: 1})).toBe(undefined);

      game.mark("o", {row: 1, column: 1});
      expect(game.playAt( {row: 1, column: 1})).toBe("o");
    });

    it("only takes valid marks", function(){
      game.mark("X", {row: 1, column: 1});
      game.mark("xo", {row: 1, column: 1});
      game.mark("O", {row: 1, column: 1});
      game.mark("fds", {row: 1, column: 1});
      expect(game.playAt( {row: 1, column: 1})).toBe(undefined);
    });

    it("doesn't play if the game is over", function(){
      spyOn(game, 'gameOver').and.callFake(function(){
        return true;
      });
      expect( function() {game.mark("o", {row: 1, column: 1}); }).toThrowError("game over!");
    });

    it("increments the turn number", function(){
      expect(game.turnNumber).toBe(1);

      game.mark("o", {row: 0, column: 1});
      expect(game.turnNumber).toBe(2);
    });
  });

  describe("gameOver", function(){
    it("is over if the game is won", function(){
      spyOn(game, 'checkWinner').and.callFake(function(){
        return "x";
      });
      expect(game.gameOver()).toBe(true);
    });

    it("is over if there have been 9 turns", function(){
      game.turnNumber = 9;
      expect(game.gameOver()).toBe(true)
      });

    it("is not over when the game starts", function(){
      expect(game.gameOver()).toBe(false)
    });
  });


  describe("checkWinner", function(){

    it("is x if there are 3 x's in a row", function(){
      game.board[0][0] = "x";
      game.board[0][1] = "x";
      game.board[0][2] = "x";
      expect(game.checkWinner()).toBe("x");
    });

    it("is o if there are 3 o's in a row", function(){
      game.board[0][0] = "o";
      game.board[0][1] = "o";
      game.board[0][2] = "o";
      expect(game.checkWinner()).toBe("o");
    });

    it("is x if there are 3 x's in a column", function(){
      game.board[0][0] = "x";
      game.board[1][0] = "x";
      game.board[2][0] = "x";
      expect(game.checkWinner()).toBe("x");
    });

    it("is o if there are 3 o's in a column", function(){
      game.board[0][0] = "o";
      game.board[1][0] = "o";
      game.board[2][0] = "o";
      expect(game.checkWinner()).toBe("o");
    });

    it("is x if there are 3 x's on a diagonal", function(){
      game.board[0][0] = "x";
      game.board[1][1] = "x";
      game.board[2][2] = "x";
      expect(game.checkWinner()).toBe("x");

      game.board[0][2] = "x";
      game.board[1][1] = "x";
      game.board[2][0] = "x";
      expect(game.checkWinner()).toBe("x");
    });

    it("is o if there are 3 o's on a diagonal", function(){
      game.board[0][0] = "o";
      game.board[1][1] = "o";
      game.board[2][2] = "o";
      expect(game.checkWinner()).toBe("o");

      game.board[0][2] = "o";
      game.board[1][1] = "o";
      game.board[2][0] = "o";
      expect(game.checkWinner()).toBe("o");
    });

    it("is false if there are 3 undefined in a row", function(){
      game.board[0][0] = undefined;
      game.board[0][1] = undefined;
      game.board[0][2] = undefined;
      expect(game.checkWinner()).toBe(false);
    });

    it("is false if there are 3 undefined in a column", function(){
      game.board[0][0] = undefined;
      game.board[1][0] = undefined;
      game.board[2][0] = undefined;
      expect(game.checkWinner()).toBe(false);
    });

    it("is false if there are 3 undefined on a diagonal", function(){
      game.board[0][0] = undefined;
      game.board[1][1] = undefined;
      game.board[2][2] = undefined;
      expect(game.checkWinner()).toBe(false);

      game.board[0][2] = undefined;
      game.board[1][1] = undefined;
      game.board[2][0] = undefined;
      expect(game.checkWinner()).toBe(false);
    });
  });
}); 












