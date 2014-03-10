console.log("YO");

//given these colors create a UL 

var colors = ["red", "blue", "green"]

body = document.querySelector("body");
ul = document.createElement("ul");

// var red = document.createElement("ul");
// red.innerText = "I like red";
// red.style.color = "red";
// colorList.appendChild(red);

var i = 0;
while(i < colors.length) {
	li = document.createElement("li");
	ul.insertAdjacentElement("afterbegin", li);
	li.innerText = "I like " + colors[i];
	li.style.color = colors[i];
	i++;
}

body.appendChild(ul);

