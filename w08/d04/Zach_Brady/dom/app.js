console.log("YO");

var colors = ["red", "blue", "green"];
var button = document.find
var colorList = document.createElement("ul");

for (i=0; i < colors.length; i++){
  var li = document.createElement("li");
  li.innerText = "I like " + colors[i];
  li.style.color = colors[i];
  colorList.appendChild(li);
};

var h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend", colorList);