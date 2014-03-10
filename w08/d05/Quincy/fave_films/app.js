var ul = document.querySelector("ul");
var form = document.querySelector("form.new-movie");

var addMovie = function(eventObject) {
  eventObject.preventDefault();

  var li = document.createElement("li");
  // this refers to the FormElement object
  li.innerText = this.elements["title"].value;

  var checkbox = document.createElement("input");
  checkbox.type = "checkbox";

  li.appendChild(checkbox);

  ul.appendChild(li);

  this.reset();

};

form.addEventListener("submit", addMovie);
ul.addEventListener("change", function(eventObject) {
  if (eventObject.target.checked) {
    eventObject.target.parentElement.style.textDecoration = "line-through";
  } else {
    eventObject.target.parentElement.style.textDecoration = "none";
  }
});
