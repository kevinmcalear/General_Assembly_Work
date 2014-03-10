console.log("YO");

var colors = ["red", "blue", "green", "purple"];

var colorList = document.createElement("ul");

for(var i = 0; i<colors.length; i++){
  var li = document.createElement("li");
  li.innerText = "I Like " + colors[i];
  li.style.color = colors[i];
  colorList.appendChild(li);
}
var button = document.querySelector("button");
button.insertAdjacentElement("afterend", colorList);

var button = document.querySelector("button");
var body = document.querySelector("body");

var clickFunc = function(){
  this.innerText = "woooo";
};

var colorFunc = function(){
  body.style.background = colors[Math.floor(Math.random()*colors.length)];
};

var buttonCount = 0;
var clickCount = function(){
  buttonCount ++;

  if(buttonCount === 10){
    this.disabled = true;
  }
};


button.addEventListener("click", clickFunc);
button.addEventListener("click", colorFunc);
button.addEventListener("click", clickCount);


var textInput = document.createElement("input");
textInput.type = "text";
button.insertAdjacentElement("afterend", textInput);

var textDiv = document.createElement("div");
textDiv.class = "inputTyped";
textInput.insertAdjacentElement('afterend', textDiv);

// var textFunc = function(){

// };

textInput.addEventListener("keyup", function(){
  textDiv.innerText = this.value;
});





// blue = document.createElement("li");
// green = document.createElement("li");