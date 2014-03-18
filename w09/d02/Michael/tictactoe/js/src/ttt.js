var Game = function(){
  this.turn = "x";
  this.turnNumber = 0;
  this.board = new Array(new Array(3), new Array(3), new Array(3));
  this.winner = ""
  this.winnerPosition = ""
}

Game.prototype.mark = function(location) {
  if ( this.gameOver() ) {
    throw new Error("game over!");
  }

  if (!this.playAt(location) ) {
    this.board[location.row][location.column] = this.turn;
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

  // FOR each row in the board
  for(var i = 0; i < 3; i++){
    if( (this.board[i][0] === this.board[i][1]) &&
        (this.board[i][1] === this.board[i][2]) ){
      var firstPosition = i * 3
      this.winner = this.board[i][0];
      this.winnerPosition = [firstPosition, (firstPosition+1), (firstPosition+2)];
      return this.board[i][0];
    }
  }
  // FOR each column in the board
  for(var i = 0; i < 3; i++){
    if( (this.board[0][i] === this.board[1][i]) &&
        (this.board[1][i] === this.board[2][i]) ){
      var firstPosition = i 
      this.winner = this.board[0][i];
      this.winnerPosition = [firstPosition, (firstPosition+3), (firstPosition+6)];
      return this.board[0][i];
    }
  }
  // diagonal top left
  if( (this.board[0][0] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][2]) ){
    this.winner = this.board[1][1];
    this.winnerPosition = [0,4,8];
    return this.board[1][1];
  }
  // diagonal top right
  if( (this.board[0][2] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][0]) ){
    this.winner = this.board[1][1];
    this.winnerPosition = [2,4,6];
    return this.board[1][1];
  }

}

Game.prototype.getWinnerPositions = function(){


}

// Game.prototype.markO = function(location) {
//   this.mark("o", location);
// }