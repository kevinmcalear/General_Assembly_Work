var colorBox = document.querySelector(".brush");
var colorBox2 = document.createElement("div");
var colorBox3 = document.createElement("div");
var inputBox = document.querySelector("input");
var colorButton = document.querySelector("button");

colorBox2.className = "brush";
colorBox3.className = "brush";

colorBox.insertAdjacentElement('afterend', colorBox2);
colorBox2.insertAdjacentElement('afterend', colorBox3);

colorButton.addEventListener("click", function(e){
	e.preventDefault()
	colorBox3.style.backgroundColor = colorBox2.style.backgroundColor;
	colorBox2.style.backgroundColor = colorBox.style.backgroundColor;
	colorBox.style.backgroundColor = inputBox.value;
});

colorBox.addEventListener('click', function(){
	inputBox.value = colorBox.style.backgroundColor;
});

colorBox2.addEventListener('click', function(){
	inputBox.value = colorBox2.style.backgroundColor;
});

colorBox3.addEventListener('click', function(){
	inputBox.value = colorBox3.style.backgroundColor;
});

document.body.addEventListener('mouseover', function(e){
		if(e.target.className === "square") {
		e.target.style.backgroundColor = inputBox.value;
	};
});

for(i = 0; i < 8000; i++) {
	var div = document.createElement("div");
	div.className = "square";
	document.body.insertAdjacentElement('beforeend', div);
};

// var squares = document.getElementsByClassName("square");

// for(i = 0; i < squares.length; i++) {
// 	squars[]
// };

