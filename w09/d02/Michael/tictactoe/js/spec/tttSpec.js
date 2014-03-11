describe("Game", function(){
  var game; 

  beforeEach(function(){
    game = new Game();
  });


  describe("mark",function(){

    beforeEach(function(){
      game.mark("x", {row: 0, column: 0});
    });  

    it("places an x or an o on the board", function(){
      
      expect(game.playAt( {row:0, column:0} ) ).toBe("x")
    });

    it("cannot overwrite a play", function(){
      game.mark("o",{row:0,column:0});
      expect(game.playAt( {row:0, column:0} ) ).toBe("x");
      expect(game.turn).toBe("o");
    });

    it("can't play the same mark twice", function(){
      game.mark("x", {row: 1, column: 1});
      expect(game.playAt( {row:1, column:1} ) ).toBe(undefined)
      
      game.mark("o", {row:1, column:1} );
      expect(game.playAt( {row:1, column:1} ) ).toBe("o")      
    });

    it("only takes valid marks", function(){
      game.mark("X", {row: 1, column: 1});
      game.mark("$", {row: 1, column: 1});
      game.mark("T", {row: 1, column: 1});
      game.mark("dasf", {row: 1, column: 1});

      expect(game.playAt( {row:1, column:1} ) ).toBe(undefined);      
    });

    it("doesn't play if the game is over", function(){
      spyOn(game, 'gameOver').and.callFake(function(){
        return true;
      });

      // expect(function(){ 
      //   game.mark("o", {row: 1, column: 1}); }).toThrowError("The game is over!")
      // })

    });


  });

  describe("checkWinner", function(){
    it("is true if there are three in a row", function(){

    });

    it("is true if there are three in a column", function(){

    });

    it("is true if there are three in a diagonal", function(){

    });

  });
  

});