console.log("YO");

var colors = ["red", "blue", "green"];
var button = document.querySelector("button");

var ul = document.createElement("ul");

button.insertAdjacentElement("beforeBegin", ul);

for(var i = 0; i < colors.length; i++) {
  var li = document.createElement("li");
  li.innerHTML = "I like " + colors[i];
  li.style.color = colors[i];
  ul.appendChild(li);
};
        