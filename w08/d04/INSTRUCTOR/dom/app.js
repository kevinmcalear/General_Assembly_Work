console.log("YO");

// Generate and insert into body:
/*
  <ul>
    <li style="color: red;">I like red</li>
    <li style="color: blue;">I like blue</li>
    <li style="color: green;">I like green</li>
  </ul>
*/

var colors = ["red", "blue", "green"];

var colorList = document.createElement("ul");

for(var i = 0; i < colors.length; i++){
  var li = document.createElement("li");  
  li.innerText = "I like " + colors[i];
  li.style.color = colors[i];
  colorList.appendChild(li);
}

var h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend", colorList);

var button = document.querySelector("button");
var body = document.querySelector("body");

var clickFunc = function() {
  console.log("I HAVE BEEN CLICKED!");
  //this.innerText = "SHMEE";
};

var colorFunc = function() {
  body.style.background = colors[Math.floor(colors.length * Math.random())];
}

var buttonCount = 0;
var clickCount = function() {
  buttonCount ++;

  if (buttonCount === 10) {
    this.disabled = true;
  }
}

button.addEventListener("click", clickFunc);
button.addEventListener("click", colorFunc);
button.addEventListener("click", clickCount);

var input = document.createElement('input');
input.type = 'text';
button.insertAdjacentElement('afterend', input);

var div = document.createElement('div');
input.insertAdjacentElement('afterend', div);

input.addEventListener('keyup', function(){
  div.innerText = this.value;

  if (div.innerText == "awesome") {
    div.classList.add("awesome-and-big");
  } else {
    div.classList.remove("awesome-and-big");
  }
});

