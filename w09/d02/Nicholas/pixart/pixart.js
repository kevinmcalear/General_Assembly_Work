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

for(var i = 0; i < 20; i ++){
  var box = document.createElement('div');
  box.className = 'brush';
  document.body.appendChild(box);
}