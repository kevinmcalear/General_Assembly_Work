var setColor = document.getElementById("set-color");
var box = document.querySelector("div.brush");
var input = document.getElementById("color-field");
var colorForm = document.getElementById("color-form");

setColor.addEventListener("click", function(e){
  e.preventDefault();
  box.style.background = input.value;
  input.value = "";
});

(function(){
  for(var i = 0; i < 19; i++){
    var div = document.createElement("div");
    div.className = "square";
    document.body.appendChild(div);
    
    var addEvent = function(div){
      div.addEventListener("click", function(){
      div.style.background = input.value;
    });  
    };

    addEvent(div);
  };
})();