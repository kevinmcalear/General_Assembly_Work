var form = document.querySelector("form");
var colorBox = document.querySelector(".brush");
var newColor = document.querySelector("#color-field");
var body = document.querySelector("body");


for (var i = 0; i < 20; i++) {
  var div = document.createElement("div");
  var a = document.createElement("a");
  div.appendChild(a);
  div.classList.add("square");
  body.appendChild(div);
}

colorDivs = document.querySelectorAll(".square");

for (var i = 0; i < colorDivs.length; i++) {
  colorDivs[i].addEventListener("click", function() {
    this.style.background = "green";
  });
}

var setColor = function(e) {
  e.preventDefault();
  colorBox.style.backgroundColor = newColor.value;
}

form.addEventListener("submit", setColor);