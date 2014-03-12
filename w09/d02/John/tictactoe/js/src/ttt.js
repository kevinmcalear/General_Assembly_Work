var Game = function(){
  this.turn = "x";
  this.turnNumber = 0;
  this.winners = [];
  this.board = new Array(new Array(3), new Array(3), new Array(3));
};

Game.prototype.mark = function(play, location) {
  if ( this.gameOver() ) {
    throw new Error("game over!");
  }

  if (!this.playAt(location) && play === this.turn) {
    this.board[location.row][location.column] = play;
    this.nextTurn();
  }
  this.turnNumber++;
};

Game.prototype.playAt = function(location) {
  return this.board[location.row][location.column];
};

Game.prototype.nextTurn = function() {
  this.turn = ( this.turn === "x" ? "o" : "x" );
};

Game.prototype.gameOver = function() {
  if (this.checkWinner() !== undefined) {
    return true;
  }

  if (this.turnNumber > 8) {
    return true;
  }

  return false;
};

Game.prototype.checkWinner = function() {

  // FOR each row in the board
  for(var i = 0; i < 3; i++){
    if( (this.board[i][0] === "x" ||
         this.board[i][0] === "o") &&
        (this.board[i][1] === this.board[i][2]) &&
        (this.board[i][1] === this.board[i][0]) ){
      this.winners = [i + "-0", i + "-1", i + "-2"];
      return this.board[i][0];
    }
  }
  // FOR each column in the board
  for(var j = 0; j < 3; j++){
    if( (this.board[0][j] === "x" ||
         this.board[0][j] === "o") &&
        (this.board[0][j] === this.board[1][j]) &&
        (this.board[1][j] === this.board[2][j]) ){
      this.winners = ["0-" + j, "1-" + j, "2-" + j];
      return this.board[0][j];
    }
  }
  // diagonal top left
  if( (this.board[0][0] === "x" ||
       this.board[0][0] === "o") &&
      (this.board[0][0] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][2]) ){
    this.winners = ["0-0", "1-1", "2-2"];
    return this.board[1][1];
  }
  // diagonal top right
  if( (this.board[0][2] === "x" ||
       this.board[0][2] === "o") &&
      (this.board[0][2] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][0]) ){
    this.winners = ["0-2", "1-1", "2-0"];
    return this.board[1][1];
  }

};

// Game.prototype.markO = function(location) {
//  this.mark("o", location);
// }