var form = document.querySelector("form.new-movie");
var ul = document.querySelector("ul");


var addMovie = function(eventObject){
  eventObject.preventDefault();
  var li = document.createElement("li");
  var inputCheck = document.createElement("input");

  inputCheck.type = "checkbox";
  li.innerHTML = this.elements["title"].value;

  li.insertAdjacentElement("afterbegin", inputCheck);
  ul.appendChild(li);
  this.reset();

  var strike = function() {
    if (inputCheck.checked == true) {
      li.style.textDecoration = "line-through";
    } else {
      li.style.textDecoration = "none";
    };
  };

  inputCheck.addEventListener("change", strike);
};



form.addEventListener("submit", addMovie);







// <form>
//     <input type="checkbox" id="my-checkbox" />
//     <label for="my-checkbox">Checkbox</label>
// </form>



















