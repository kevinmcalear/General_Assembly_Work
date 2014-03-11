colorInput = document.getElementById("color-field");
button = document.querySelector("button");
brush = document.querySelector(".brush");

button.addEventListener("click", function() {
  var color = colorInput.value;
  brush.style.background = color;
});