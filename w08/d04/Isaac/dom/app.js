console.log("YO");

var colors = ["red", "blue", "green"];

var colorList = document.createElement("ul");

for(var i = 0; i < colors.length; i++){
  var li = document.createElement("li");  
  li.innerText = "I like " + colors[i];
  li.style.color = colors[i];
  colorList.appendChild(li);
}

var h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend", colorList);

var button = document.querySelector("button");

var clickFunc = function(){
  console.log("I have been clicked");
}

var body = document.querySelector("body");

button.addEventListener("click", function(){
  body.style.background = colors[Math.floor(colors.length * Math.random())];
});

button.addEventListener("click", clickFunc);
button.addEventListener("click", colorFunc);
button.addEventListener("click", clickCount);

var input = document.createElement("input");
input.type = 'text';
button.insertAdjacentElement('afterened', input);

var div = document.createElement('div');
input.insertAdjacentElement('afterend', div);

input.addEventListener('keydown', function(){
  div.innerText = this.value;});














