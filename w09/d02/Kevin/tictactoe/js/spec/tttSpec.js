describe("Game", function(){
	var game;

	beforeEach(function(){
		game = new Game();
	});
	

	describe("#mark", function(){
		beforeEach(function(){
		game.mark( "x", { row: 0, coloumn: 0 } );
	});

		it("places an 'x' or 'o' on the board", function(){
			expect( game.playAt( { row: 0, coloumn: 0 } ) ).toBe( "x" );
		});

		it("cannot overwrite a play", function(){
			game.mark( "o", { row: 0, coloumn: 0 } );
			expect( game.playAt( { row: 0, coloumn: 0 } ) ).toBe( "x" );
		});

		it("cannot play the same mark twice in a row", function(){
			game.mark( "x", { row: 1, coloumn: 1 } );
			expect( game.playAt( { row: 1, coloumn: 1 } ) ).toBe( undefined );
		});
	});
});