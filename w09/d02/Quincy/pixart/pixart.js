var setColor = document.querySelector('#set-color');
var colorInput = document.querySelector('#color-field');
var colorField = document.querySelector('.brush');

setColor.addEventListener('click', function(eventObject){
  eventObject.preventDefault();
  colorField.style.backgroundColor = colorInput.value.toString();
});

for ( var i = 0; i < 8000; i++ ) {
  var newDiv = document.createElement('div');
  newDiv.className = "square";
  document.body.appendChild(newDiv);
};

var square = document.querySelectorAll('.square');

for ( var i = 0; i < square.length; i++ ) {
  square[i].addEventListener('mouseover', function() {
    this.style.backgroundColor = colorInput.value.toString();
  });
  square[i].style.height = '10px'
  square[i].style.width = '10px'
  square[i].style.marginTop = 0
  square[i].style.marginRight = 0
  square[i].style.marginLeft = 0
  square[i].style.marginBottom = 0
};

