var Game = function(){
  this.turn = "x";
  this.turnNumber = 0;
  this.board = new Array(new Array(3), new Array(3), new Array(3));
};

Game.prototype.mark = function(play, location) {
  if ( this.gameOver() ) {
    throw new Error("game over!");
  }

  if (!this.playAt(location) && play === this.turn) {
    this.board[location.row][location.column] = play;
    this.turnNumber++;
    this.nextTurn();
  }
  
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

    var x = i
    var y = i + 1
    var z = i + 2
    var liOne = document.querySelectorAll("li")[x];
    var liTwo = document.querySelectorAll("li")[y];
    var liThree = document.querySelectorAll("li")[z];
    liOne.classList.add("winning");
    liTwo.classList.add("winning");
    liThree.classList.add("winning");
      return this.board[i][0];
  }
}
  // FOR each column in the board
  for(var i = 0; i < 3; i++){
    if( (this.board[0][i] === "x" ||
        this.board[0][i] === "o") &&
        (this.board[0][i] === this.board[1][i]) &&
        (this.board[1][i] === this.board[2][i]) ){
    var x = i
    var y = i + 3
    var z = i + 6
    var liOne = document.querySelectorAll("li")[x];
    var liTwo = document.querySelectorAll("li")[y];
    var liThree = document.querySelectorAll("li")[z];
    liOne.classList.add("winning");
    liTwo.classList.add("winning");
    liThree.classList.add("winning");
      return this.board[0][i];
  }
}
  // diagonal top left
  if( (this.board[0][0] === "x" ||
      this.board[0][0] === "o") &&
      (this.board[0][0] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][2]) ){
    var liOne = document.querySelectorAll("li")[0];
    var liTwo = document.querySelectorAll("li")[4];
    var liThree = document.querySelectorAll("li")[8];
    liOne.classList.add("winning");
    liTwo.classList.add("winning");
    liThree.classList.add("winning");
    return this.board[1][1];
}
  // diagonal top right
  if( (this.board[0][2] === "x" || 
      this.board[0][2] === "o") &&
    (this.board[0][2] === this.board[1][1]) &&
    (this.board[1][1] === this.board[2][0]) ){
    var liOne = document.querySelectorAll("li")[2];
    var liTwo = document.querySelectorAll("li")[4];
    var liThree = document.querySelectorAll("li")[6];
    liOne.classList.add("winning");
    liTwo.classList.add("winning");
    liThree.classList.add("winning");
    return this.board[1][1];

};

}
