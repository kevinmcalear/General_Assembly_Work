console.log("YO");
var colors = ["red", "blue", "green"];

var h1 = document.querySelector("h1");
var button = document.querySelector("button");
var ul = document.createElement("ul");

h1.insertAdjacentElement('afterend', ul);
// button.onClick = makeList();

// function makeList() {
  for( i = 0; i < colors.length; i++) {
    var li = document.createElement("li");
    li.innerText = "I like " + colors[i];
    li.style.color = colors[i];
    ul.appendChild(li);
  }
// }