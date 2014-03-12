var Game = function(){
  this.turn = "x";
  this.turnNumber = 0;
  this.board = new Array(new Array(3), new Array(3), new Array(3));
  this.winningArray = new Array;
}

Game.prototype.mark = function(play, location) {
  if ( this.gameOver() ) {
    throw new Error("game over!");
  }

  if (!this.playAt(location) && play === this.turn) {
    this.board[location.row][location.column] = play;
    this.turnNumber++;
    this.nextTurn();
  };
  
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
    if( (this.board[i][0] !== undefined) &&
        (this.board[i][1] === this.board[i][2]) &&
        (this.board[i][1] === this.board[i][0]) ){
      return this.board[i][0];
  }
}
  // FOR each column in the board
  for(var i = 0; i < 3; i++){
    if( (this.board[0][i] !== undefined) &&
        (this.board[0][i] === this.board[1][i]) &&
        (this.board[1][i] === this.board[2][i]) ){
      return this.board[0][i];
  }
}
  // diagonal top left
  if( (this.board[0][0] !== undefined) &&
      (this.board[0][0] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][2]) ){
    return this.board[1][1];
}
  // diagonal top right
  if( (this.board[0][2] !== undefined) &&
    (this.board[0][2] === this.board[1][1]) &&
    (this.board[1][1] === this.board[2][0]) ){
    return this.board[1][1];
};

}

Game.prototype.winningLine = function(){
  for(var i = 0; i < 3; i++){
    if( (this.board[i][0] === this.board[i][1]) &&
        (this.board[i][1] === this.board[i][2]) ){
      return [new Array(i,0),new Array(i,1),new Array(i,2)];
  }
}
  // FOR each column in the board
  for(var i = 0; i < 3; i++){
    if( (this.board[0][i] === this.board[1][i]) &&
        (this.board[1][i] === this.board[2][i]) ){
      return [new Array(0,i),new Array(1,i),new Array(2,i)];
  }
}
  // diagonal top left
  if( (this.board[0][0] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][2]) ){
    return [new Array(0,0),new Array(1,1),new Array(2,2)];
}
  // diagonal top right
  if( (this.board[0][2] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][0]) ){
    return [new Array(0,2),new Array(1,1),new Array(2,0)];
}

};