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
  // create a section tag with an id of middle-earth
  var section = document.createElement("section");
  section.id = "middle-earth";
  // add each land as an article tag
  for(var i = 0; i < lands.length; i++) {
    var article = document.createElement("article");
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];

    article.appendChild(h1); 
    section.appendChild(article);
  }
    // inside each article tag include an h1 with the name of the land
    // append middle-earth to your document body
  var body = document.querySelector("body");
  body.insertAdjacentElement("afterend", section);
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var ul = document.createElement("ul");
  for(var i = 0; i < lands.length; i++) {
    var hobbit = document.createElement("li");
    hobbit.innerText = hobbits[i];
    hobbit.class = "hobbit";
    ul.appendChild(hobbit);
  }

  var body = document.querySelector("body");
  body.insertAdjacentElement("afterend", ul);
    // give each hobbit a class of hobbit
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var div = document.createElement("div");
  div.id = "the-ring";
  // add the ring as a child of Frodo
  var hobbits = document.querySelector("ul");
  var frodo = hobbits.firstChild;
  frodo.appendChild(div);
}

keepItSecretKeepItSafe();

function makeBuddies(buddies) {
  // create an aside tag
  var aside = document.createElement("aside");
  // display an unordered list of buddies in the aside
  for(var i = 0; i < buddies.length; i++) {
    var buddy = document.createElement("li");
    buddy.innerText = buddies[i];
    aside.appendChild(buddy);
  }
  // insert your aside before rivendell
  var lands = document.querySelector("section");
  var rivendell = lands.querySelectorAll("article")[1];
  rivendell.insertAdjacentElement("beforebegin", aside);
}

makeBuddies(buddies);

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var buds = document.querySelectorAll("aside");
  var strider = buds[0].querySelectorAll("li")[3];
  strider.innerText = "Aragorn";
}
beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  var hobSec = document.querySelectorAll("ul")[0]; 
   
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}