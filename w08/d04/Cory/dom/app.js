console.log("YO");

var colors = ["red", "blue", "green", "yellow"];

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


