var ul = document.querySelector("ul");
var form = document.querySelector("form.new-movie");

// var strikeThrough = function(){
//   this.parent.style.textDecoration = "line-through";
// };

var addMovie = function(e){
  e.preventDefault();

  var li = document.createElement("li");
  var checkbox = document.createElement("input");
  var label = document.createElement("label");
  checkbox.type = "checkbox";
  checkbox.addEventListener("change", function(){
    if (checkbox.checked) {
      li.style.textDecoration = "line-through";
    } else {
      li.style.textDecoration = "none";
    }
  });
  li.innerText = this.elements["title"].value;
  li.appendChild(checkbox);

  ul.appendChild(li);
  this.reset();
};


form.addEventListener("submit", addMovie);
ul.addEventListener("change", function(e) {
  if (e.target.checked) {
    e.target.parentElement.style.textDecoration = "line-through";
  } else {
    e.target.parentElement.style.textDecoration = "none";
  }
});