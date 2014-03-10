console.log("YO");

var colors = ["red", "blue", "green", "lightgray"];
var button = document.querySelector("button");

var ul = document.createElement("ul");

button.insertAdjacentElement("beforeBegin", ul);

for(var i = 0; i < colors.length; i++) {
  var li = document.createElement("li");
  li.innerHTML = "I like " + colors[i];
  li.style.color = colors[i];
  ul.appendChild(li);
};

// button.addEventListener("click", function() {
//   console.log("I HAVE BEEN CLICKED");
// });

//could also be written like below:

var colorFunc = function() {
  var pageBody = document.querySelector("body");

  console.log("I HAVE BEEN CLICKED");

  i = Math.floor(Math.random() * colors.length);

  pageBody.style.background = colors[i];

  for(var i = 0; i < 10; i++) {

  };
};

var buttonCount = 0;

var clickCount = function() {
  buttonCount++;

  if (buttonCount === 10) {
    this.disabled = true;
  };
};

var input = document.createElement("input");
input.type = 'text';
button.insertAdjacentElement("afterEnd", input);

var div = document.createElement("div");

var typeMagnifier = function() {
  button.insertAdjacentElement("afterEnd", div);

  input.insertAdjacentElement("afterEnd", div);
  div.innerHTML = input.value;
};

button.addEventListener("click", colorFunc);
button.addEventListener("click", clickCount);
input.addEventListener("keyup", typeMagnifier);