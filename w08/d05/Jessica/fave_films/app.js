var ul = document.querySelector("ul");
// var input = document.querySelector("input");
// var addButton = document.querySelector("button");
var form = document.querySelector("form.new-movie");

form.addEventListener("submit", function(eventObject){
  eventObject.preventDefault();
  li = document.createElement("li");
  li.innerText = this.elements["title"].value;
  this.reset();
  var checkbox = document.createElement("input");
  checkbox.type = 'checkbox'
    checkbox.addEventListener("change", function(){
      if(this.checked) {
        this.parentElement.style.textDecoration = "line-through";
      }
      else{
        this.parentElement.style.textDecoration = "none";
      };
    });

  li.appendChild(checkbox);
  ul.appendChild(li);
});



