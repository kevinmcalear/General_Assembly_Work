console.log("YO");

var colors = ["red", "blue", "green"];

var colorList = document.createElement("ul");

// var green = document.createElement("li");
// var blue = document.createElement("li");

for(var i = 0; i < colors.length; i++) {
  var li = document.createElement("li");
  li.innerText = "I like " + colors[i];
  li.style.color = colors[i];
  colorList.appendChild(li);
}

var h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend", colorList);

var button = document.querySelector("button");

var body = document.querySelector("body");

var timesClicked = 0;

var clickFunc = function() {
  timesClicked++;
  if (timesClicked === 10) {
    this.disabled = true;
  }

}

var clickCount = function() {
    var color = colors[Math.floor(Math.random()*colors.length)];
    body.style.backgroundColor = color;
    console.log("YOLO");
}

button.addEventListener("click", clickCount);
button.addEventListener("click", clickFunc);

var div = document.querySelector("div");

var typer = function() {
  div.innerText = this.value;
}

var textInput = document.querySelector("input");
textInput.addEventListener("keyup", typer);

