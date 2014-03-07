// My code 

var h1 = document.querySelector("h1")
var ul = document.createElement("ul")
var li = document.createElement("li")

h1.insertAdjacentElement("afterend", ul);

ul.insertAdjacentHTML("beforeend", '<li style ="color: red;">Red</li>');
ul.insertAdjacentHTML("beforeend", '<li style ="color: green;">Green</li>');
ul.insertAdjacentHTML("beforeend", '<li style ="color: blue;">Blue</li>');


// Kevin's Code

console.log("YO");
var colors = ["red", "blue", "green"];

var h1 = document.querySelector("h1");

var ul = document.createElement("ul");

h1.insertAdjacentElement('afterend', ul);



for( i = 0; i < colors.length; i++) {
  var li = document.createElement("li");
  li.innerText = "I like " + colors[i];
  li.style.color = colors[i];
  ul.appendChild(li);
}