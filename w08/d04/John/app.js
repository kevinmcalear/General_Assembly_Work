console.log("YO");

var colors = ["red", "blue", "green", "purple"];

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