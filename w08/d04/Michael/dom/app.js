console.log("YO");

var colors = ["red", "blue", "green"]

list = document.createElement("ul");
h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend",list);

for (var i = 0; i < colors.length; i++){
  // Step 1: Create the Element
  li = document.createElement("li");  
  // Step 2: Populate the Element
  li.innerText = "I Love " + colors[i];
  // Step 3: Style the Element
  li.style.color = colors[i];
  // Step 4: Place the Element
  list.insertAdjacentElement("beforeend",li);
}; 

