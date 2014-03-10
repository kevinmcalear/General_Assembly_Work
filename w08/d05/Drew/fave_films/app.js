var ul = document.querySelector("ul");
var form = document.querySelector("form.new-movie");

var addMovie = function(e) {
  // form isn't submitted w HTTP request //
  e.preventDefault();
  var li = document.createElement("li");
  var checkbox = document.createElement('input');
  checkbox.type = "checkbox";
  li.innerText = this.elements["title"].value;
  li.insertAdjacentElement('afterbegin', checkbox)
  ul.appendChild(li);
  this.reset();

   function lineThrough() {
    if (checkbox.checked) {
      li.style.textDecoration = "line-through";
    }
    else {
      li.style.textDecoration = "none";
    }
  };
  checkbox.addEventListener('change', lineThrough)
};


form.addEventListener("submit", addMovie);
