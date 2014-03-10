console.log("Hey Ya");

var input = document.querySelector("input");
var button = document.querySelector("button");
var ul = document.querySelector("ul");
var form = document.querySelector("form");


function addFilm(eventObject){
  eventObject.preventDefault();
    var film = this.elements["title"].value;
    if(film.length > 0 ){
      li = document.createElement("li");
      li.innerText = film;
      var checkbox = document.createElement("input");
      checkbox.type = "checkbox";
      checkbox.addEventListener("change", function(){
        if (this.checked === true){
          this.parentElement.style.textDecoration = "line-through";
        } else {
          this.parentElement.style.textDecoration = "none";
        }
      });
      li.appendChild(checkbox);
      ul.appendChild(li);
      this.reset();
  }
}

form.addEventListener("click", addFilm);
