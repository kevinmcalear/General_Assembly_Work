console.log("YO");

var colors = ["red", "blue", "pink", "cadetblue", "chocolate", "chartreuse"];
var ul = document.createElement("ul");

  for (var i = 0; i < colors.length; i++){
    element = document.createElement("li");
    element.innerText = "I like " + colors[i];
    element.style.color = colors[i];
    ul.appendChild(element);
  }

console.log(ul);

h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend", ul);

