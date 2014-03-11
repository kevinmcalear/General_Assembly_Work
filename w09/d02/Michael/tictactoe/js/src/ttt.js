var Game = function(){
  this.board = new Array(new Array(3), new Array(3), new Array(3) );
  this.turn = "x";
};

Game.prototype.mark = function(play,location){
  if(this.gameOver() ){
    throw new Error("game over!");
  }

  if(!this.playAt(location) && play === this.turn){
    this.board[ location["row"] ][ location["column"] ] = play;
    this.nextTurn();
  };

};

Game.prototype.playAt = function(location){
  return this.board[ location["row"] ][ location["column"] ]
};

Game.prototype.nextTurn = function(){
  if(this.turn === "x"){
    this.turn = "o";
  }else{
    this.turn = "x";
  };
};

Game.prototype.gameOver = function(){

};