var game = new Game();

function render(){
  var board = document.querySelector("ul.board");

  board.innerHTML = "";

  for (var i = 0; i < 9; i++) {
    var li = document.createElement("li");
    li.className = game.board[parseInt(i/3)][i%3];
    li.id = [i];
    board.appendChild(li);
    li.addEventListener("click", function() {
      
    });
  }
}

render();