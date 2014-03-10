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
var section = document.querySelector("section");
var body = document.querySelector("body");

function makeMiddleEarth(lands) {
  for (i = 0; i < lands.length; i++) {
    var h1 = document.createElement("h1");
    var article = document.createElement("article");
    h1.innerText = lands[i];
    h1.id=lands[i];
    // h1 is appended to the empty article tag
    article.appendChild(h1);
    // insert the element article just inside the element, before it's first child
    section.insertAdjacentElement('afterbegin', article);
  }
};

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  var ul = document.createElement("ul");
  var shireArticle = document.getElementById("The Shire");

  for (i = 0; i < hobbits.length; i++) {
    var li = document.createElement("li");
    li.innerText = hobbits[i];
    ul.appendChild(li);
    li.className ="hobbit";
    li.id=hobbits[i];
    shireArticle.insertAdjacentElement('beforeend', ul);
  }
};

makeHobbits(hobbits)

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  var div = document.createElement("div");
  var frodo = document.getElementById("Frodo Baggins");
  div.id = "the-ring";
  div.innerText = "The Ring";
  frodo.insertAdjacentElement('beforeend', div);
};

keepItSecretKeepItSafe()

function makeBuddies(buddies) {
  // create an aside tag
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");
  var rivendell = document.getElementById("Rivendell");
  // display an unordered list of buddies in the aside
  // insert your aside before rivendell
  for (i = 0; i < buddies.length; i++) {
    var li = document.createElement("li");
    li.innerText = buddies[i];
    li.id = buddies[i];
    ul.appendChild(li);
  }
  // now append the ul to aside
  aside.appendChild(ul)
  //insert the aside below rivendell
  rivendell.insertAdjacentElement('beforeend', aside)
};

makeBuddies(buddies) 

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var strider = document.getElementById("Strider")
  strider.innerText = "Aragorn"
};

beautifulStranger()

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}













