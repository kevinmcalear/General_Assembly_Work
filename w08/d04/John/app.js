console.log("YO");

var colors = ["red", "blue", "green"];

var colorList = document.createElement("ul");

for (var i = 0; i < colors.length; i++) {
  var li = document.createElement("li");
  li.className = colors[i];
  li.innerText = "I like " + colors[i];
  li.style.color = colors[i];
  colorList.appendChild(li);
  // colorList.insertAdjacentElement("beforeend", li);
}

var h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend", colorList);

var button = document.querySelector("button");
var body = document.querySelector("body");

// button.addEventListener("click", function(){
  // console.log("I've been clicked.");
// });

// OR

var clickFunc = function() {
  console.log("I'VE BEEN CLICKED!");
};
var colorFunc = function() {
  var randColor = Math.floor(Math.random() * colors.length);
  body.style.background = (colors[randColor]);
};

var clicks = 0;
var clickCount = function() {
  clicks ++;
  if (clicks === 10) {
    this.disabled = true;
  }
};

button.addEventListener("click", clickFunc);
button.addEventListener("click", colorFunc);
button.addEventListener("click", clickCount);


var div = document.createElement("div");
var p = document.createElement("p");
div.appendChild(p);
var input = document.querySelector("input");
input.insertAdjacentElement("afterend", div);

input.addEventListener("keyup", function(){
  p.innerText = this.value;
});










