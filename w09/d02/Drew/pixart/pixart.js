var setColor = document.getElementById('set-color');
var body = document.body
var colorField = document.getElementById('color-field');
// var brush = document.getElementsByClassName('brush')

function changeColor(e) {
  e.preventDefault();
  var brush = document.getElementsByClassName('brush');
  
  brush[0].style.background = colorField.value;
};

for(var i = 0; i < 20; i++){
  var div = document.createElement('div');
  div.className = "square"
  body.appendChild(div);
  div.addEventListener('click', function(){
    this.style.background = brush[0].style.background;
  })
};



