// Dramatis Personae

var hobbits = [
"Frodo Baggins",
"Samwise 'Sam' Gamgee",
"Meriadoc \"Merry\" Brandybuck",
"Peregrin 'Pippin' Took"
];

var buddies = [
"Gandalf the Grey",
"Legolas",
"Gimli",
"Strider",
"Boromir"
];

var lands = ["The Shire", "Rivendell", "Mordor"];
// ## 1
function makeMiddleEarth() {
// create a section tag with an id of middle-earth
  var section = document.createElement("section");
  section.id = "middle-earth";
  var body = document.querySelector("body");
  // add each land as an article tag
  for(var i = 0; i < lands.length; i++){
    var article = document.createElement("article");
    // inside each article tag include an h1 with the name of the land
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];

    // give the shires ids
    article.id = (lands[i]).replace(/ /g,'');
    article.appendChild(h1);
    body.appendChild(article);
    // append middle-earth to your document body
      //document.appendChild(section.middle-earth);
    } // end of for loop
};

makeMiddleEarth();

// ## 2
function makeHobbits() {
  // display an unordered list of hobbits in the shire
  //isolate the shire
  var theShire = document.querySelector("#TheShire");
  //create hobbit list
  var hobbitList = document.createElement("ul");
  //for each hobbit, add as li and give a class
  for(var i = 0; i < hobbits.length; i++){
    var li = document.createElement("li");
    li.innerText = hobbits[i];
    li.className = (hobbits[i]).replace(/ /g,'');
    theShire.appendChild(hobbitList)
    hobbitList.appendChild(li);

  } //end for loop
};

makeHobbits();

// ## 3
function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var theRing = document.createElement("div");
  theRing.id = "the-ring";
  // add the ring as a child of Frodo
  var Frodo = document.querySelector(".FrodoBaggins");
  Frodo.appendChild(theRing);
};

keepItSecretKeepItSafe();

// ## 4
function makeBuddies() {
  // create an aside tag
  var buddiesList = document.createElement("aside");
  // display an unordered list of buddies in the aside
  for(var i = 0; i < buddies.length; i++){
    var li = document.createElement("li");
    li.innerText = buddies[i];
    buddiesList.appendChild(li);
  }//end for loop
  // insert your aside before rivendell
  var rivendell = document.querySelector("#Rivendell");
  rivendell.insertAdjacentElement("beforeBegin", buddiesList);
};

makeBuddies();


function beautifulStranger() {
}

function forgeTheFellowShip() {
}