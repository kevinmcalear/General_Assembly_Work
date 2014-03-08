var ul = document.querySelector("ul");
var form = document.querySelector("form.new-movie");


var addMovie = function(e){
  e.preventDefault();

  var li = document.createElement("li");

  var checkbox = document.createElement("input");
  checkbox.type = "checkbox";
  checkbox.addEventListener("change", strikeThrough);

  // this refers to the FormElement object
  li.innerText = this.elements["title"].value;
  li.insertAdjacentElement("beforeend",checkbox);
  ul.appendChild(li);

  this.reset();
};

form.addEventListener("submit", addMovie);

var strikeThrough = function(){
  if(this.checked === true){
  this.parentElement.style.textDecoration = "line-through";
  } else {
    this.parentElement.style.textDecoration = "none";
  }
};

