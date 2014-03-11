console.log("YO");

var colors = ["red", "blue", "green", "brown", "grey", "black", "hotpink", "wheat", "yellowgreen", "tomato"];
colorList = document.createElement("ul");

var button = document.querySelector("button");
var body = document.querySelector("body");
var title = document.querySelector("h1");
var cat = document.createElement("img");
cat.src = "http://placekitten.com/g/200/300";
var textbox = document.createElement("input");
textbox.type = "text"
button.insertAdjacentElement("afterend", textbox);

var div = document.createElement("div");
textbox.insertAdjacentElement("afterend", div);

textbox.addEventListener("keyup", function() { 
  div.innerText = this.value;
});

var buttonCount = 0;


for(var i = 0; i<colors.length; i++) {
  li = document.createElement("li");
  li.innerText = "I like " + colors[i] + ".";
  li.style.color = colors[i];
  colorList.appendChild(li);
};

body.insertAdjacentElement("beforeend", colorList);

var clickFunc = function() {
  number = Math.round((Math.random() * colors.length));
  body.style.backgroundColor = colors[number];
  title.insertAdjacentElement("afterend", cat);
}

var clickCount = function(){
    buttonCount += 1;
    if(buttonCount > 10) {
      this.disabled = true;
    } else {
      buttonCount += 1;
    }
}

button.addEventListener("click", clickFunc);
button.addEventListener("click", clickCount);

title.style.color = "white";
title.style.backgroundColor = "black";




