var ul = document.querySelector("ul");
var form = document.querySelector("form.new-movie");
var checkboxes = document.querySelectorAll("form.checkbox");

var insertFunc = function(e){
  e.preventDefault();
  var li = document.createElement("li");
  
  // puts the name of the movie in the li element
  li.innerText = this.elements["title"].value;
  li.id = this.elements["title"].value.toLowerCase().replace(/ /g, "");
  
  // creates the checkbox form
  
  
  // creates the checkbox input
  var input = document.createElement("input");
  input.type = "checkbox";
  input.addEventListener("change", strikethrough);
  // adds these elements to the screen
  li.appendChild(input);
  ul.appendChild(li);

  this.reset();
}; 

var strikethrough = function(e){
  var item = this.parentElement;
  if(this.checked){
    item.style.textDecoration = "line-through";
  } else {
    item.style.textDecoration = "none";
  };
};

form.addEventListener("submit", insertFunc);

