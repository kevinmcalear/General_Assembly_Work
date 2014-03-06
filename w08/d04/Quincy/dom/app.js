console.log("YO");

var colors = ["red", "blue", "green"];
var h1 = document.querySelector("h1");
var button = document.querySelector("button");
var body = document.querySelector("body")

var color = function () {
  h1.insertAdjacentHTML("afterend", "<ul>" )
  for ( var i = 0; i < colors.length; i++ )
    button.insertAdjacentHTML("beforebegin", '<li style="color: ' + colors[i] + ';">I like ' + colors[i] +'</li>');
  body.insertAdjacentHTML("beforeend", "</ul>");
};
