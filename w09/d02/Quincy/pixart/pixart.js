var setColor = document.querySelector('#set-color');
var colorInput = document.querySelector('#color-field');
var colorField = document.querySelector('.brush');

setColor.addEventListener('click', function(){
  colorField.style.backgroundColor = colorInput.value.toString();
});
