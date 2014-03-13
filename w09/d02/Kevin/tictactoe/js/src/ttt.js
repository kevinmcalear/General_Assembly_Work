var Game = function() {
	this.board = new Array(new Array(3), new Array(3), new Array(3));
};

Game.prototype.mark = function(play, location) {
	if(!this.playAt(location)){
		this.board[location.row][location.column] = play;
	};
};

Game.prototype.playAt = function(location) {
	return this.board[location.row][location.column];
};