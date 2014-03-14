var Game = function(){
  this.turn = "x";
  this.turnNumber = 0;
  this.board = new Array(new Array(3), new Array(3), new Array(3));
}

Game.prototype.mark = function(play, location) {
  if ( this.gameOver() ) {
    throw new Error("game over!");
  }

  if (!this.playAt(location) && play === this.turn) {
    this.board[location.row][location.column] = play;
    this.nextTurn();
  };
  this.turnNumber++;
}

Game.prototype.playAt = function(location) {
  return this.board[location.row][location.column]; 
}

Game.prototype.nextTurn = function() {
  this.turn = ( this.turn === "x" ? "o" : "x" )
};

Game.prototype.gameOver = function() {
  if (this.checkWinner() !== undefined) {
    return true;
  }

  if (this.turnNumber > 8) {
    return true;
  }

  return false;
}

Game.prototype.checkWinner = function() {
	//FOR each row in the board, if index 1 == index 2 == index 0, then what they equal has won!
	for(var i = 0; i < 3; i++){
    if( (this.board[i][0] === this.board[i][1]) &&
        (this.board[i][1] === this.board[i][2]) ){
      return this.board[i][0];
    }
  }

  //FOR each column in the board, if index 1 == index 2 == index 0, then what they equal has won!
	for(var i = 0; i < 3; i++){
    if( (this.board[0][i] === this.board[1][i]) &&
        (this.board[1][i] === this.board[2][i]) ){
      return this.board[0][i];
    }
  }

  //diagonal – top right
  if( (this.board[0][2] === this.board[1][1]) &&
        (this.board[1][1] === this.board[2][0]) ){
      return this.board[0][0];
    }

   //diagonal – top left
  if( (this.board[0][0] === this.board[1][1]) &&
        (this.board[1][1] === this.board[2][2]) ){
      return this.board[0][0];
    }
  
}