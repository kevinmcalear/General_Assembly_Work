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
    this.turnNumber++;
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
    // this.checkWinner
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
      return this.board[i][0];
  }
}
  // FOR each column in the board
  for(var i = 0; i < 3; i++){
    if( (this.board[0][i] === this.board[1][i]) &&
        (this.board[1][i] === this.board[2][i]) &&
        this.board[0][i] !== undefined){
      return this.board[0][i];
  }
}
  // diagonal top left
  if( (this.board[0][0] === "x" || "o") &&
      (this.board[0][0] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][2]) ){
    return this.board[1][1];
}
  // diagonal top right
  if( (this.board[0][2] === ("x" || "o")) &&
    (this.board[0][2] === this.board[1][1]) &&
    (this.board[1][1] === this.board[2][0]) ){
    return this.board[1][1];
};

}

Game.prototype.winningCombo = function(){
  for(var i = 0; i < 3; i++){
    if( (this.board[i][0] === this.board[i][1]) &&
        (this.board[i][1] === this.board[i][2]) ){
      return [i,0,i,1,i,2];
    }
  }
  // FOR each column in the board
  for(var i = 0; i < 3; i++){
    if( (this.board[0][i] === this.board[1][i]) &&
        (this.board[1][i] === this.board[2][i]) ){
      return [0,i,1,i,2,i];
      // return this.board[0][i];
    }
  }
  // diagonal top left
  if( (this.board[0][0] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][2]) ){
    return [0,0,1,1,2,2];
    // return this.board[1][1];
  }
  // diagonal top right
  if( (this.board[0][2] === this.board[1][1]) &&
      (this.board[1][1] === this.board[2][0]) ){
    return [0,2,1,1,2,0];
    // return this.board[1][1];
  }
};

Game.prototype.winningIds = function(){
  var winningArray = game.winningCombo();
  console.log(winningArray);
  winningIdArray = [];
  if(winningArray[1] === 0) {
    winningIdArray.push(winningArray[1]);
    winningIdArray.push(winningArray[3]);
    winningIdArray.push(winningArray[5]);
  } else if(winningArray[1] === 1) {
    winningIdArray.push(winningArray[0] + 2);
    winningIdArray.push(winningArray[2] + 2);
    winningIdArray.push(winningArray[4] + 2);
  } else if(winningArray[1] === 2) {
    winningIdArray.push(winningArray[0] + 4);
    winningIdArray.push(winningArray[2] + 4);
    winningIdArray.push(winningArray[4] + 4);
  }
  return winningIdArray;
};

