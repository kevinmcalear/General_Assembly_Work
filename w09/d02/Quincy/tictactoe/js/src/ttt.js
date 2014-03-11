var Game = function() {
  this.turn = "x";
  this.board = new Array(new Array(3), new Array(3), new Array(3));
};
Game.prototype.mark = function(play, location) {
  if (!this.playAt(location) && play === this.turn) {
    this.board[location.row][location.column] = play;
  };
};
Game.prototype.playAt = function(location) {
  return this.board[location.row][location.column];
};

Game.prototype.nextTurn = function() {
  this.turn = ( this.turn === "x" ? "o" : "x" )
};

Game.prototype.gameOver = funcion() {

}

// Game.prototype.mark() = function.(location) {
//   this.mark("o", location);
// }
