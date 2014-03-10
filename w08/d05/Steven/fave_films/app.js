var ul = document.querySelector("ul.films");
var form = document.querySelector("form.new-movie");

var addMovie = function(eventObject){
  window.eventObject = eventObject;
  eventObject.preventDefault();

  var li = document.createElement("li");
  var checkbox = document.createElement("input");
  checkbox.type = "checkbox";
  // checkbox.addEventListener("change", strikeText);

  li.innerText = this.elements["title"].value;
  li.appendChild(checkbox);

  ul.appendChild(li);
  this.reset();
};

// var strikeText = function(){
//     if(checkbox.checked){
//   this.parentElement.style.textDecoration = "line-through";
//     } else{ this.parentElement.style.textDecoration = "none";
//   }
// };


// var movieCheckbox = document.querySelectorAll("input[type='checkbox']");


form.addEventListener("submit", addMovie);
ul.addEventListener("change", function(eventObject){
  if(eventObject.target.checked){
    eventObject.target.parentElement.style.textDecoration = "line-through";
  } else {
    eventObject.target.parentElement.style.textDecoration = "none";
  }
});

