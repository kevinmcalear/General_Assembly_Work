function Game() {
  this.board = new Array(new Array(3), new Array(3), new Array(3));
  this.turn = 'x';
  this.numberOfTurns = 0;
}

Game.prototype.mark = function(play, location) {
  if (this.gameOver) {
    throw new Error('Game Over!');  
  };

  if (!this.playAt(location) && play === this.turn) {
    this.board[location.row][location.column] = play;
    this.nextTurn();
  };

  this.numberOfTurns++
}

Game.prototype.playAt = function(location) {
  return this.board[location.row][location["column"]]
}

Game.prototype.gameOver = function() {
  if (this.checkWinner !== undefined) {
    return true;
  }

  if (this.numberOfTurns > 8) {
    return true;
  }

  return false;
}

Game.prototype.nextTurn = function() {
  this.turn = ( this.turn === 'x' ? 'o' : 'x');

  // if ( this.turn === 'x' ) {
  //   this.turn = 'o';
  // } else if ( this.turn === 'o' ) {
  //   this.turn = 'x';
  // };
}