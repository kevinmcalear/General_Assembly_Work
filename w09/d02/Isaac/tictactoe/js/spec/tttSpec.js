describe("Game", function(){
  describe("mark", function(){
    it("places an x or o on the board", function(){
      var game = new Game();
      game.mark("x", {row: 0, column: 0});
      expect(game.playAt( {row: 0, column: 0})).toBe("x");
    });
  });
});