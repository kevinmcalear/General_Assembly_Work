var ul = document.querySelector(".films");
var form = document.querySelector(".new-movie");
var li = document.querySelectorAll("li");

var addMovie = function(e) {
  e.preventDefault();

  var li = document.createElement("li");
  li.innerHTML = this.elements["title"].value; 

  var movieCheckbox = function() {
    checkBoxForm = document.createElement("input");
    checkBoxForm.type = 'checkbox';

    li.insertAdjacentElement("afterBegin", checkBoxForm);
  }

  movieCheckbox();
  ul.appendChild(li);
  this.reset();
}

form.addEventListener("submit", addMovie);
ul.addEventListener("change", function(e) {
  if (e.target.checked) {
    e.target.parentElement.style.textDecoration = "line-through";
  } else {
    e.target.parentElement.style.textDecoration = "none";
  }
});