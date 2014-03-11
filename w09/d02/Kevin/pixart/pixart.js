var colorBox = document.querySelector(".brush");
var inputBox = document.querySelector("input");
var colorButton = document.querySelector("button");

colorButton.addEventListener("click", function(e){
	e.preventDefault()
	colorBox.style.backgroundColor = inputBox.value;
});

(function(){
	for(i = 0; i < 20; i++) {
		var div = document.createElement("div");
		div.className = "square";
		document.body.insertAdjacentElement('beforeend', div);
	};
})();