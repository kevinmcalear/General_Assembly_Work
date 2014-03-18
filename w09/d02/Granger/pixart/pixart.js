var brush = document.querySelector('.brush');
var colorInput = document.querySelector('#color-field');
var button = document.querySelector('#set-color');
var body = document.querySelector('body');

var color = '#1B4370';
var lastTimeColor = color;

var swatch1 = document.createElement("div");
swatch1.className = "brush";
body.appendChild(swatch1);
var swatch2 = document.createElement("div");
swatch2.className = "brush";
body.appendChild(swatch2);
var swatch3 = document.createElement("div");
swatch3.className = "brush";
body.appendChild(swatch3);

for(var i = 0; i < 8000; i++){
  var square = document.createElement("div");
  square.className = "square";
  square.addEventListener('mouseover', paintSquare);
  body.appendChild(square);
}

function paint(e) {
  e.preventDefault();
  color = colorInput.value;
  brush.style.background = color;
  swatch3.style.background = swatch2.style.background;
  swatch2.style.background = swatch1.style.background;
  swatch1.style.background = lastTimeColor;
  lastTimeColor = color;
  colorInput.value = "";
}

function paintSquare(e) {
  this.style.background = color;
}

function paintSwatch() {
  console.log(color);
  color = this.style.background;
  brush.style.background = color;
  swatch3.style.background = swatch2.style.background;
  swatch2.style.background = swatch1.style.background;
  swatch1.style.background = lastTimeColor;
  lastTimeColor = color;
}


button.addEventListener('click', paint);
swatch1.addEventListener('click', paintSwatch);
swatch2.addEventListener('click', paintSwatch);
swatch3.addEventListener('click', paintSwatch);
