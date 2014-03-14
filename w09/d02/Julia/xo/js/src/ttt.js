var Game = function(){
  this.turn = "x";
  this.turnNumber = 0;
  this.board = [0, 1, 2, 3, 4, 5, 6, 7, 8];
}

Game.prototype.mark = function(play, location) {
  if ( this.turnNumber === 9 ) {
    throw new Error("game over!");
  }

  
}
Game.prototype.playAt = function(location) {
  return this.board[location];
}





