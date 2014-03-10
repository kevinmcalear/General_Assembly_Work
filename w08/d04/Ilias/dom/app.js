console.log("YO");

var colors = ["red", "blue", "pink", "cadetblue", "chocolate", "chartreuse"];
var ul = document.createElement("ul");
var h1 = document.querySelector("h1");
var h2 = document.querySelector("h2");
var button = document.querySelector("button");
var body = document.querySelector("body");
var input = document.querySelector("input");
var magnifier = document.querySelector("div.magnifier");

  for (var i = 0; i < colors.length; i++){
    var element = document.createElement("li");
    element.innerText = "I like " + colors[i];
    element.style.color = colors[i];
    ul.appendChild(element);
  }

h1.insertAdjacentElement("afterend", ul);

var changeBackgroundColor = function(){
  setInterval(function(){
    body.style.backgroundColor = colors[Math.floor(colors.length * Math.random())];
  }, 100);
};

button.addEventListener("click", changeBackgroundColor);

var magnifyText = function(){
  typedText = input.value;
  h2.innerText = typedText;
};

input.addEventListener("keyup", magnifyText);




