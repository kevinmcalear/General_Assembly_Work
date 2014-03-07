console.log("YO");

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

// Generate and insert into body:
/*
  <ul>
    <li style="color: red;">I like red</li>
    <li style="color: blue;">I like blue</li>
    <li style="color: green;">I like green</li>
  </ul>
*/