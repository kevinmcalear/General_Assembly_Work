var form = document.querySelector("form");
var colorBox = document.querySelector(".brush");
var newColor = document.querySelector("#color-field");
var body = document.querySelector("body");

var addDivs = function() {
  for (var i = 0; i < 20; i++) {
    var div = document.createElement("div");
    div.classList.add("square");
    body.appendChild(div);
  }
}
addDivs();

var setColor = function(e) {
  e.preventDefault();
  colorBox.style.backgroundColor = newColor.value;
}

form.addEventListener("submit", setColor);