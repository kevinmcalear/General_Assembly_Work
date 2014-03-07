console.log("YO");

var body = document.querySelector("body");


var colors = ["red", "blue", "green", "purple", "grey", "lightcoral", "cornflowerblue"];

var ul = document.createElement("ul");

for (var i = 0; i < colors.length; i++) {
  var li = document.createElement("li")
  li.innerText = "I like " + colors[i];
  li.style.color = colors[i];
  ul.appendChild(li);
};


var h1 = document.querySelector("h1");

h1.insertAdjacentElement('afterend', ul);

var button = document.querySelector("button");

var clickFunc = function() {
  // setInterval(function(){
  //   body.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];
  // },200);

  body.style.backgroundColor = colors[Math.floor(Math.random() * colors.length)];

};

var buttonCount = 0;
var clickCount = function() {
  if (buttonCount > 10) {
    this.disabled = true;
  } else {
    buttonCount += 1;
  };
};

var input = document.createElement("input");
input.type = "text";

var div = document.createElement("div");

button.insertAdjacentElement("afterend", input);
input.insertAdjacentElement("afterend", div );

var typeFunc = function() {
  var letters = input.value;
  textbox.innerHTML= letters;
};


input.addEventListener("keyup", function(){
  div.innerText = this.value;
});
button.addEventListener("click", clickFunc);
button.addEventListener("click", clickCount);




















