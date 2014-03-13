var setColor = document.getElementById("set-color");
var recent = document.getElementById("first");
var lessRecent = document.getElementById("second");
var old = document.getElementById("third")
var input = document.getElementById("color-field");
var colorForm = document.getElementById("color-form");

setColor.addEventListener("click", function(e){
  e.preventDefault();
  old.style.background = lessRecent.style.background;
  lessRecent.style.background = recent.style.background;
  recent.style.background = input.value;
  input.value = "";
});

recent.addEventListener("click", function(){
  input.value = recent.style.background;
});

lessRecent.addEventListener("click", function(){
  input.value = lessRecent.style.background;
});

old.addEventListener("click", function(){
  input.value = old.style.background;
});

(function(){
  for(var i = 0; i < 7999; i++){
    var div = document.createElement("div");
    div.className = "square";
    document.body.appendChild(div);
    
    var addEvent = function(div){
      div.addEventListener("mouseover", function(){
      div.style.background = input.value;
    });  
    };

    addEvent(div);
  };
})();