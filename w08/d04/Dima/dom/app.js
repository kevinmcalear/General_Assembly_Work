console.log("YO");

var colors = ["red", "blue", "green"];

var colorList = document.createElement("ul");

  for (var i = 0; i < colors.length; i++) {
    var line = document.createElement("li");
    line.innerText = "I like " + colors[i];
    line.style.color = colors[i];
    colorList.appendChild(line);
  }

  var h1 = document.querySelector("h1");
  h1.insertAdjacentElement("afterend", colorList);

var button = document.querySelector("button");

var clickFunc = function() {
  var body = document.querySelector("body");
  body.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];
  console.log("I have been clicked!");
};

button.addEventListener("click", clickFunc);

var input = document.createElement("input");
input.type = 'text';
button.insertAdjacentElement("afterend", input)
var div = document.createElement("div");
input.insertAdjacentElement("afterend", div);

input.addEventListener('keyup', function(){
  div.innerText = this.value;
})
