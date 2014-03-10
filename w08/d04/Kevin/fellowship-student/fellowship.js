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
  var section = document.querySelector("section#middle-earth");
  
  for( i = 0; i < lands.length; i++) {
    var article = document.createElement("article");
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];
    section.insertAdjacentElement('beforeend', article);
    article.insertAdjacentElement('beforeend', h1);
  }
}


function makeHobbits(hobbits) {
  var section = document.querySelectorAll("section#middle-earth article")[0];
  var ul = document.createElement("ul");
  
  for( i = 0; i < hobbits.length; i++) {
    var li = document.createElement("li");
    li.innerText = hobbits[i];
    li.id = hobbits[i].replace(/ /g,'-');
    ul.insertAdjacentElement('beforeend', li);
  }
  
  section.insertAdjacentElement('beforeend', ul);
}


function keepItSecretKeepItSafe() {
  var frodo = document.querySelector("#Frodo-Baggins");
  var ring = document.createElement("div");
  
  ring.id = "the-ring";
  frodo.appendChild(ring);
}


function makeBuddies(buddies) {
  var h1 = document.querySelectorAll("section#middle-earth article h1")[1];
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");
  
  for( i = 0; i < buddies.length; i++) {
    var li = document.createElement("li");
    li.innerText = buddies[i];
    li.id = buddies[i].replace(/ /g,'-');
    ul.insertAdjacentElement('beforeend', li);
  }
  
  aside.insertAdjacentElement('beforeend', ul);
  h1.insertAdjacentElement('beforebegin', aside);
}


function beautifulStranger() {
  var myDude = document.querySelector("#Strider");
  myDude.innerText = "Aragorn";
}


function forgeTheFellowShip() {
 var section = document.querySelectorAll("section#middle-earth article")[1];
 var theFellowship = hobbits.concat(buddies);
 var oldHobbits = document.querySelector("article ul");
 var oldBuddies = document.querySelector("article aside");
 var div = document.createElement("div");
 
 section.insertAdjacentElement('beforeend', div);
 oldHobbits.remove();
 oldBuddies.remove();
 
 for( i = 0; i < theFellowship.length; i++) {
    var p = document.createElement("p");
    p.innerText = theFellowship[i];
    div.insertAdjacentElement('beforeend', p);
    alert(theFellowship[i] + " was added to the Fellowship!");
  }
}

// I am calling each function in order here

makeMiddleEarth(lands);
makeHobbits(hobbits);
keepItSecretKeepItSafe();
makeBuddies(buddies);
beautifulStranger();
forgeTheFellowShip();