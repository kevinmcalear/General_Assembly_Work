console.log("YO");
var colors = ["indianred", "blue", "green", "salmon", "yellow", "orange", "aqua"];

var rand = colors[Math.floor(Math.random() * colors.length)];

var h1 = document.querySelector("h1");

var ul = document.createElement("ul");

h1.insertAdjacentElement('afterend', ul);



for( i = 0; i < colors.length; i++) {
  var li = document.createElement("li");
  li.innerText = "I like " + colors[i];
  li.style.color = colors[i];
  ul.appendChild(li);
}

var button = document.querySelector("button")

var clickFunc = function() {
  document.body.style.background = colors[Math.floor(Math.random() * colors.length)];
}

var buttonCount = 0;

var clickCount = function() {
  buttonCount ++

  if (buttonCount === 10) {
    this.disabled = true;
  }
};


var input = document.createElement("input")
input.type = 'text';
button.insertAdjacentElement('afterend', input)

var div = document.createElement("div")
button.insertAdjacentElement('afterend', div)

button.addEventListener("click", clickFunc)
button.addEventListener("click", clickCount)

input.addEventListener("keyup", function(){
  div.innerText = this.value
})




















