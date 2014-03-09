//Functionality
//Add New Movies to the List from the Input
//Checkbox to Cross Out Movies

//Step 1:  Find the list : 
var ul = document.querySelector("ul");
  
//Step 2:  Find the Form
var form = document.querySelector("form.new-movie")

//Step 3:  Create a Function to add the value. .
//Step 3a:  Add the Li to the UL with innertext. 
//Step 3b:  Add the LI
//Step 3c:  Clear the form
//Step 3d:  Nest function to do cross out
//Step 3e:  Create event listener for crossout. 





var addMovie = function(eventObject){
  // var crossOutText = function(){
  //   if(checkbox.checked===true){
  //     li.style.textDecoration = "line-through" 
  //   } 
  //   if(checkbox.checked===false) {
  //     li.style.textDecoration = "none"
  //   }
  // };

  eventObject.preventDefault();
  var li = document.createElement("li");
  var checkbox = document.createElement("input")
  checkbox.type = "checkbox"
  // checkbox.addEventListener("change",crossOutText);

  li.innerText = this.elements["title"].value;
  li.id = this.elements["title"].value.replace(/ /g,"-");
  li.insertAdjacentElement("beforeend", checkbox);
  ul.insertAdjacentElement("beforeend", li);
  this.reset()
};

//Step 4:  Create EventListener for the form. 
form.addEventListener("submit",addMovie)


///Other option
ul.addEventListener("change", function(eventObject) {
  debugger; 
  if(eventObject.target.checked){
    eventObject.target.parentElement.style.textDecoration = "line-through"
  } else {
    eventObject.target.parentElement.style.textDecoration = "none"
  }
});

