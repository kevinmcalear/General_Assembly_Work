console.log("YO");

var colors = ["red", "blue", "green"];

var colorList = document.createElement("ul");

  for (var i = 0; i < colors.length; i++) {
    var line = document.createElement("li");
    line.innerText = "I like " + colors[i];
    line.style.color = colors[i];
    colorList.appendChild(line);
  }

  var h1 = document.querySelector("h1");
  h1.insertAdjacentElement("afterend", colorList);
  // var green = document.createElement("li");
  // var blue = document.createElement("li");