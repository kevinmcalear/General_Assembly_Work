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
      game.mark("x", {row: 1, column: 1});
      game.mark("xo", {row: 1, column: 1});
      game.mark("O", {row: 1, column: 1});
      game.mark("sadf", {row: 1, column: 1});

      expect(game.playAt)
    });

    it("doesn't play if the game is over", function() {
      spyOn(game, "gameOver").and.callFake(function() {
        return true;
      });

      exoect( function() { game.mark("o", {row: 1, column: 1}) .}
    })
  });

  // describe( "checkWinner", function() {
  //   it("is true if there are three in a row", function() {
  //     game.board[0][0]
  //     game.board[0][1]
  //     game.board[0][2]

  //   });

  // });
});
