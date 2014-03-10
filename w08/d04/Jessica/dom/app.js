console.log("YO");

var colors = ["red", "blue", "yellowgreen"];

ul = document.createElement("ul");

var i = 0
while (i < colors.length) {
  var li = document.createElement("li");
  li.innerText = "I like " + colors[i];
  li.style.color = colors[i];
  ul.appendChild(li);
  i++
};

h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend", ul);

var button = document.querySelector("button");

button.addEventListener("click", function(){
  body = document.querySelector("body");
  body.style.background = colors[Math.floor(Math.random()*3)]
}
)

input = document.createElement("input");
button.insertAdjacentElement("afterend", input);
div = document.createElement("div");
input.insertAdjacentElement("afterend", div);


input.addEventListener("keyup", function(){
  div.innerText = input.value
}
)