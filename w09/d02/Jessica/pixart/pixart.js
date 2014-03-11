brushBox = document.querySelector(".brush");
input = document.querySelector("#color-field");
brushBox.style.backgroundColor = input.value;

button = document.querySelector("#set-color");

button.addEventListener("click", function(){
  brushBox = document.querySelector(".brush");
  input = document.querySelector("#color-field");
  brushBox.style.backgroundColor = input.value;

  });

var form = document.querySelector("form");
form.addEventListener("submit", function(e){
  e.preventDefault();
  brushBox = document.querySelector(".brush");
  input = document.querySelector("#color-field");
  brushBox.style.backgroundColor = input.value;
  });

var body = document.querySelector("body");

  for(var i = 0; i < 8000; i++){
    var square = document.createElement("div");
    square.className = "square";
    square.style.width = "10px";
    square.style.height = "10px";
    square.style.margin = "0px";
    body.appendChild(square);
    square.addEventListener("mouseover", function(){
      this.style.backgroundColor = brushBox.style.backgroundColor;
    });
  };



// var i = 0
// while (i < 20){
//   var squareId = document.querySelector("#box\i")
//   squareId.addEventListener("click", function(){
//     square.style.backgroundColor = "green";
//   });
//   i++
// };
