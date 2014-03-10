console.log("YO");

//this saves info to memory
var colors = ["red", "blue", "green"];
var colorList = document.createElement("ul");

for(var i = 0; i < colors.length; i ++) {
  var li = document.createElement("li");
  li.innerText = "I like " + colors[i];
  li.style.color = colors[i];
  colorList.appendChild(li);
}
//this sends it to the DOM
var h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend", colorList);

var button = document.querySelector("button"); 

var clickFunc = function () {
  console.log("I HAVE BEEN CLICKED!");
  // this.innerText = "shmee";
};

var colorFunc = function() {
  body.style.background = colors[Math.floor(colors.length * Math.random())]
}

button.addEventListener("click", clickFunc);

var body = document.querySelector("body");

button.addEventListener("click", function() {
  body.style.background = colors[Math.floor(colors.length * Math.random())]
})

var input = document.createElement('input');
input.type = 'text';
button.insertAdjacentElement('afterend', input);

var div = document.createElement('div');
input.insertAdjacentElement('afterend', div);

input.addEventListener('keyup', function(){
  div.innerText = this.value;
})

//create elements in memory
// var h1 = document.querySelector("h1"),
// var ul = document.createElement("ul"),
// var li1 = document.createElement("li1");
// var li2 = document.createElement("li2");
// var li3 = document.createElement("li3");