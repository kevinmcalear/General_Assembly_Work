var colorChoice = document.getElementById('color-field');
var setColorButton = document.getElementById('set-color');
var brushBox = document.querySelector('.brush');
var squareBox = document.querySelectorAll('.square');


var changeColor = function(){
  brushBox.style.background = colorChoice.value;
};

setColorButton.addEventListener('click', changeColor);
colorChoice.addEventListener('keypress', function(e){
  var key = e.keyCode;
  if(key == 13) {
    changeColor();
  }
});

var changeToGreen = function(){
  this.style.background = colorChoice.value;
};

for(var i = 0; i < 20; i ++){
  var box = document.createElement('div');
  box.className = 'square';
  document.body.appendChild(box);
  box.addEventListener('click', changeToGreen);
}
