console.log("YO");

var colors = ["red", "blue", "green"]


var colorList = document.createElement("ul");


for(var i = 0; i < colors.length; i++){
  var li = document.createElement("li");
  li.innerText = "I like "+ colors[i];
  li.style.color = colors[i];
  colorList.appendChild(li);
};

var h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend", colorList);

var button = document.querySelector("button");
var body = document.querySelector("body");


//or could not write in addEventListener

var clickFunc = function() {
  console.log("I HAVE BEEN CLICKED!");
};

var colorFunc = function(){
  body.style.background = colors[Math.floor(colors.length * Math.random())];
}

var buttonCount = 0;
var clickCount = function(){
  buttonCount++;
  if(buttonCount === 10){
    this.disabled = true;
  }          
};

/*var typeOnPage = function(){
  var form = document.createElement("form");
  var form = document.querySelector("form");
  var input = document.createElement("textinput");
  input.type = "text";
  var inputDiv = document.createElement("div");
  input.onkeypress = function(){
    inputDiv.innerText = input.value;
  document.appendChild(div);
  document.appendChild(form);
  form.appendChild(input);

  };*/

var input = document.createElement("input");
input.type = "text";
button.insertAdjacentElement("afterend", input);
var div = document.createElement("div");
input.insertAdjacentElement("afterend", div);



button.addEventListener("click", clickFunc);
button.addEventListener("click", colorFunc);
button.addEventListener("click", clickCount);
input.addEventListener("keyup", function(){
  div.innerText = this.value;
});
//just did here so we can do anonymous functions






