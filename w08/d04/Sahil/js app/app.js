var button = document.querySelector("button");
var body = document.querySelector("body");

var input = document.querySelector("input")

function random_color() 
{
    var r = function () { return Math.floor(Math.random()*256) };
    return "rgb(" + r() + "," + r() + "," + r() + ")";
}

var clickFunc = function(){
  console.log("I've been shot!")
  body.style.backgroundColor = random_color() 
}

button.addEventListener("click",clickFunc);

var changeBackgroundColor = function(){
  setInterval(function(){
    body.style.backgroundColor = random_color() ;
  }, 1000);
};