console.log("YO");

var colors = ["red", "blue", "green", "cyan", "aquamarine", "burlywood", "firebrick"];
var colorList = document.createElement("ul");
var body = document.querySelector("body");

for(var i = 0; i < colors.length; i++){
  var li = document.createElement("li");
  li.innerText = "I like " + colors[i];
  li.style.color = colors[i];
  colorList.appendChild(li);
}

var h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend", colorList);

var button = document.querySelector("button");

var clickFunc = function() {
    body.style.background = colors[Math.floor(Math.random() * colors.length)];
};

button.addEventListener("click", clickFunc);

var input = document.createElement('input');
input.type = 'text';
button.insertAdjacentElement('afterend', input);

var div = document.createElement('div');
input.insertAdjacentElement('afterend', div);

input.addEventListener('keyup', function(){
  div.innerText = this.value;
});
var kittens = ["http://placekitten.com/200/200", "http://placekitten.com/100/100", "http://placekitten.com/600/800", "http://placekitten.com/400/300"];
var kittyFunc = function(){
  var image = document.querySelector("img");
  image.src = kittens[Math.floor(Math.random() * kittens.length)];
};

button.addEventListener('click', kittyFunc);

