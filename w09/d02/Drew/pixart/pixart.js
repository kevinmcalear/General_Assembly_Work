var setColor = document.getElementById('set-color');



function changeColor(){
  var brush = document.getElementsByClassName('brush');
  var colorField = document.getElementById('color-field');
  brush[0].style.background = colorField.value;

};

setColor.addEventListener('click', changeColor)
