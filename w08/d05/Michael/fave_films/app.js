//Add New Movies to the List from the Input


//Step 1:  Find the list : 
var ul = document.querySelector("ul");


  
//Step 2:  Find the Form
var form = document.querySelector("form.new-movie")

//Step 3:  Create a Function to add the value. .
//Step 3a:  Add the Li to the UL with innertext. 
//Step 3b:  Add the LI
//Step 3c:  Clear the form





var addMovie = function(eventObject){
  var crossOutText = function(){
    if(checkbox.checked===true){
      li.style.textDecoration = "line-through" 
    } 
    if(checkbox.checked===false) {
      li.style.textDecoration = "none"
    }
  };
  eventObject.preventDefault();
  var li = document.createElement("li");
  var checkbox = document.createElement("input")
  checkbox.type = "checkbox"
  checkbox.addEventListener("change",crossOutText);

  // li.innerText = form.value;
  li.innerText = this.elements["title"].value;
  li.id = this.elements["title"].value.replace(/ /g,"-");
  li.insertAdjacentElement("beforeend", checkbox);
  ul.insertAdjacentElement("beforeend", li);
  // form.value = ""
  this.reset()
};

//Step 4:  Create EventListener for the form. 
// form.addEventListener("change",addMovie)
form.addEventListener("submit",addMovie)


///checkbox after each Movies
///checking the box, cross out the Movies


//Step 1:  Add input type= checkbox


//Step 2:  Create Function to Cross Out Text



//Step 3:  Create Event Listener to Cross out Text. 
// var ul = document.querySelector("ul");
// var checkboxes = document.querySelectorAll("input[type='checkbox']")

// checkboxes.addEventListener("CheckboxStateChange", crossOutText)

