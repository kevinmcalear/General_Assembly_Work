var colorChoice = document.getElementById('color-field');
var setColorButton = document.getElementById('set-color');
var brushBox = document.querySelector('.brush');



var changeColor = function(){
  brushBox.style.background = colorChoice.value;
  colorChoice.value = "";
};

setColorButton.addEventListener('click', changeColor);
colorChoice.addEventListener('keypress', function(e){
  var key = e.keyCode;
  if(key == 13) {
    changeColor();
  }
});

var changeToGreen = function(){
  this.style.background = brushBox.style.background;
};

for(var i = 0; i < 8000; i ++){
  var box = document.createElement('div');
  box.className = 'square';
  document.body.appendChild(box);
  box.addEventListener('mouseover', changeToGreen);
}
