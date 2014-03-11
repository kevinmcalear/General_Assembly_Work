var colorChoice = document.getElementById('color-field');
var setColorButton = document.getElementById('set-color');
var brushBox = document.querySelector('.brush');




setColorButton.addEventListener('click', function(){
  brushBox.style.background = colorChoice.value;
});