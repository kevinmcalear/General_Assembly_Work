// Find and prepairing elements
var ul = document.querySelector("ul");
var form = document.querySelector("form.new-movie");


// Building our addItem function
var addItem = function(e) {
  e.preventDefault();

  var li = document.createElement("li");
  li.innerText = this.elements["title"].value;
  
  var checkbox = document.createElement('input');
  checkbox.type = "checkbox";
  
  checkbox.addEventListener("change", function(){
    if(this.checked == true){ 
      this.parentElement.style.textDecoration ='line-through';
    } else {
      this.parentElement.style.textDecoration ='none';
    }
  });

  li.appendChild(checkbox);
  ul.appendChild(li);
  this.reset();
};

// Setting up our event listeners
form.addEventListener("submit", addItem);


