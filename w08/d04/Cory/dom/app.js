console.log("YO");

var colors = ["red", "blue", "green", "yellow", "tomato", "lightgreen"];

// create the ul element
var colorList = document.createElement("ul");

// iterate over the colors array and add text, 
// style and add li's to the ul element
 for( var i = 0; i < colors.length; i++ ) {
    var li = document.createElement("li");
    li.innerText = "I like " + colors[i];
    li.style.color = colors[i];
    // adds the 3 li's to the ul element called colorList
    colorList.appendChild(li);
 };

// select where to insert the element
 var h1 = document.querySelector("h1");
 h1.insertAdjacentElement("afterend", colorList);



var body = document.querySelector("body");

var button = document.querySelector("button");

var colorFunc = function(){
  body.style.background = colors[Math.floor(Math.random() * colors.length)];
};

var clickFunc = function(){
  console.log("I have been clicked");
};

var buttonCount = 0;
var clickCount = function(){
  if(buttonCount == 9) {`
    this.disabled = true;
  } else {
    buttonCount += 1;
  }

};

button.addEventListener("click", clickFunc);
button.addEventListener("click", colorFunc);
button.addEventListener("click", clickCount);


var input = document.querySelector("input");
var div = document.querySelector("div");

var text = function(){
  div.innerText = input.value;
};

input.addEventListener("keyup", text)


