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



function makeMiddleEarth(lands) {
  // Step 1: Find the section with id = "middle-earth"
  // Step 2: add each land as an article tag
  // Step 3: inside each article tag include an h1 with the name of the land
  // Step 4: append middle-earth to your document body
  section = document.getElementById("middle-earth"); 
  for ( var i= 0; i < lands.length; i++){
    article = document.createElement("article");
    h1 = document.createElement("h1")
    h1.innerText = lands[i] ;
    article.appendChild(h1)
    section.appendChild(article)
  };
};
makeMiddleEarth(lands)

function makeHobbits(hobbits) {
  // Step 1: display an unordered list of hobbits in the shire
  // Step 2: give each hobbit a class of hobbit 
  var middleEarth = document.querySelector("section");
  var shire = middleEarth.children[0]
  var ul = document.createElement("ul")
  
  for (var i= 0; i <hobbits.length; i++){
    var li = document.createElement("li")
    li.className = "hobbit";
    li.innerText = hobbits[i]; 
    ul.appendChild(li);
    shire.appendChild(ul);
  };
  
  
}; 
makeHobbits(hobbits)


//QUESTION:  HOW TO LOCATE FRODO WITHOUT ARRAY 
function keepItSecretKeepItSafe() {
  // Step 1: create a div with an id of 'the-ring'
  // Step 2: add the ring as a child of Frodo 
  var theRing = document.createElement("div")
  theRing.id = "the-ring"
  var hobbits = document.querySelector("ul") 
  frodo = hobbits.children[0]
  frodo.appendChild(theRing)
};
keepItSecretKeepItSafe()


function makeBuddies(buddies) {
  // Step 1: create an aside tag
  // Step 2: display an unordered list of buddies in the aside
  // Step 3:  insert your aside before rivendell
  var aside = document.createElement("aside")
  var ul = document.createElement("ul")
  
  for (var i=0; i < buddies.length; i++){
    var li = document.createElement("li");
    li.innerText = buddies[i];
    ul.appendChild(li);
    aside.appendChild(ul);
  };
  var middleEarth = document.querySelector("section");
  var rivendell = middleEarth.children[1]; 
  rivendell.appendChild(aside);
};
makeBuddies(buddies)


//Question:  Is there a way to find this other than ID or array? 
function beautifulStranger() {
  // Step 1: change the buddy 'Strider' textnode to "Aragorn"
  // Step 1a: Locate Strider Node
  var buddies = document.querySelector("aside ul");
  var strider = buddies.children[3];
  // Step 1a: Update Strider Node to Aragorn
  strider.innerText = "Aragorn";
}
beautifulStranger()

//Question:  How to make this more Dry?
//Question:  Why does this move entirely?  (In Step 1: An not add a new section? )
//Question:  Why does this NOT move entirely?  (In Step 3: An not add a new section? )


function forgeTheFellowShip() {
  // Step 1: move the hobbits and the buddies to Rivendell
  var hobbitsx = document.querySelector("article ul") 
  var buddiesx = document.querySelector("aside ul")
  var middleEarth = document.querySelector("section");
  var rivendell = middleEarth.children[1]; 
  rivendell.appendChild(hobbitsx); 

  // Step 2: create a new div called 'the-fellowship'
  var div = document.createElement("div")
  var ul = document.createElement("ul")
  div.id = "the-fellowship"
  mordor = middleEarth.children[2]  
  mordor.appendChild(div)
  div.appendChild(ul)
  // Step 3: add each hobbit and buddy one at a time to 'the-fellowship'

  for (var i=0; i < hobbits.length; i++){
    var hobbit_person = document.querySelector(".hobbit");
    ul.appendChild(hobbit_person);
    alert(hobbit_person.innerText+" has moved")
  };
  for (var i=0; i < buddies.length; i++){
    var buddy_person = document.querySelector("aside ul li");
    ul.appendChild(buddy_person);
    alert(buddy_person.innerText+" has moved")
  };



  // Step 4: after each character is added make an alert that they have joined your party
}
forgeTheFellowShip()