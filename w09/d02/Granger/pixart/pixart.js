var brush = document.querySelector('.brush');
var colorInput = document.querySelector('#color-field');
var button = document.querySelector('#set-color');


var paint = function(e) {
  e.preventDefault();
  var color = colorInput.value;
  brush.style.background = color;
}


button.addEventListener('click', paint);