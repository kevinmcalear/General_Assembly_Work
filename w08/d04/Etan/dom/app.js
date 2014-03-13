console.log("YO");

var color = ["red", "blue", "green", "yellow", "gray", "purple", "black", "white", "hotpink", "snow", "olivedrab", "aqua", "seagreen", "violet", "plum", "salmon", "gold"]

// var colorText = 
// '<ul>
// 	<li style="color: red;">I like red</li>
// 	<li style="color: blue;">I like blue</li>
// 	<li style="color: green;">I like green</li>
// </ul>';

// button.insertAdjacentElement("afterend", colorText);

document.querySelector('button').insertAdjacentHTML('afterend', '<ul><li style="color: red;">I like red</li><li style="color: blue;">I like blue</li><li style="color: green;">I like green</li></ul>')
button = document.querySelector('button');
html = document.querySelector('html');
big = document.querySelector('.big');
medium = document.querySelector('.medium');
small = document.querySelector('.small');

bigtwo = document.querySelector('.bigtwo');
mediumtwo = document.querySelector('.mediumtwo');
smalltwo = document.querySelector('.smalltwo');

var clickFunc = function() {
	// setInterval(function(){html.style.backgroundColor = color[Math.floor(Math.random() * (color.length - 0 + 1))];},100);
	setInterval(function(){big.style.backgroundColor = color[Math.floor(Math.random() * (color.length - 0 + 1))];},1000);
	setInterval(function(){medium.style.backgroundColor = color[Math.floor(Math.random() * (color.length - 0 + 1))];},750);
	setInterval(function(){small.style.backgroundColor = color[Math.floor(Math.random() * (color.length - 0 + 1))];},500);

	setInterval(function(){bigtwo.style.backgroundColor = color[Math.floor(Math.random() * (color.length - 0 + 1))];},1000);
	setInterval(function(){mediumtwo.style.backgroundColor = color[Math.floor(Math.random() * (color.length - 0 + 1))];},750);
	setInterval(function(){smalltwo.style.backgroundColor = color[Math.floor(Math.random() * (color.length - 0 + 1))];},500);
	
	
};

button.addEventListener("click", clickFunc);

speak = document.querySelector('.speak');
speaknow = document.querySelector('.speaknow');

var speakFunc = function() {
	speaknow.innerText = speak.value;
}

speak.addEventListener("keyup", speakFunc)



