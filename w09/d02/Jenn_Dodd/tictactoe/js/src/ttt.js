var Game = function(){
  this.turn = "x";
  this.turnNumber = 0;
  this.board = new Array(new Array(3), new Array(3), new Array(3));
}

Game.prototype.hashIt = function(idToHash) {
  idArray = idToHash.slice(1).split("-");
  r = parseInt(idArray[0]);
  c = parseInt(idArray[1]);
  return {row: r, column: c};
};

Game.prototype.mark = function(play, location) {
  if ( this.gameOver() ) {
    throw new Error("game over!");
  }

  if (!this.playAt(location) && play === this.turn) {
    this.board[location.row][location.column] = play;
    this.turnNumber++;
    this.nextTurn();
    this.checkWinner();
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
    if( (this.board[i][0] === "x" ||
        this.board[i][0] === "o") &&
        (this.board[i][1] === this.board[i][2]) &&
        (this.board[i][1] === this.board[i][0]) ){
      this.winClass([i+"-0", i+"-1", i+"-2"]);
      return this.board[i][0];
    }
  }
  // FOR each column in the board
  for(var i = 0; i < 3; i++){
    if( (this.board[0][i] === "x" ||
        this.board[0][i] === "o") &&
        (this.board[0][i] === this.board[1][i]) &&
        (this.board[1][i] === this.board[2][i]) ){
      this.winClass(["0-"+i, "1-"+i, "2-"+i]);
      return this.board[0][i];
    }
  }
  // diagonal top left
  if( (this.board[0][0] === "x" ||
      this.board[0][0] === "o") &&
      (this.board[0][0] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][2]) ){
    this.winClass(["0-0", "1-1", "2-2"]);
    return this.board[1][1];
  }
  // diagonal top right
  if( (this.board[0][2] === "x" || 
      this.board[0][2] === "o") &&
    (this.board[0][2] === this.board[1][1]) &&
    (this.board[1][1] === this.board[2][0]) ){
    this.winClass(["0-2", "1-1", "2-0"]);
    return this.board[1][1];
  };

}

Game.prototype.winClass = function(winners) {
  var box1 = document.querySelector("#a"+ winners[0]);
  var box2 = document.querySelector("#a"+ winners[1]);
  var box3 = document.querySelector("#a"+ winners[2]);

  box1.classList.add("winning");
  box2.classList.add("winning");
  box3.classList.add("winning");
}









