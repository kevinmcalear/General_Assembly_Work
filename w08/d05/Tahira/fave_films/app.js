var form = document.querySelector("form");
var ul = document.querySelector("ul");

form.addEventListener("submit", function(e) {
  e.preventDefault();
  var li = document.createElement("li");
  var checkboxForm = document.createElement("form");
  var input = document.createElement("input");
  checkboxForm.classList.add("movie_check");
  input.type = "checkbox";
  input.name = "checkbox";
  input.addEventListener("change", function(e) {
    e.preventDefault();
    if (input.checked) {
      li.style.setProperty("text-decoration", "line-through");
    } else {
      li.style.setProperty("text-decoration", "none");
    };
  });
  checkboxForm.appendChild(input);
  li.innerText = this.elements["title"].value;
  li.appendChild(checkboxForm);
  ul.appendChild(li);
  this.reset();
});




  