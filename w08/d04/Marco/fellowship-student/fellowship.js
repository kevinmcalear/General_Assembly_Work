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
  // select section tag with an id of middle-earth
  var selectSection = document.querySelector("#middle-earth");

  for(var i = 0; i < lands.length; i++) {
    var article = document.createElement("article");
    article.id = lands[i];

    // inside each article tag include an h1 with the name of the land
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];

    // append middle-earth to your document body
    article.insertAdjacentElement('afterBegin', h1);

    // add each land as an article tag
    selectSection.appendChild(article);
  }
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var ul = document.createElement("ul");

  for(var i = 0; i < hobbits.length; i++) {
    var li = document.createElement("li");

    // give each hobbit a class of hobbit
    li.id = hobbits[i];
    li.innerText = hobbits[i];
    ul.appendChild(li);
  }

  var shireID = document.getElementById("The Shire");
  shireID.appendChild(ul);
  
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var ring = document.createElement("div");
  ring.innerText = "The Ring"
  ring.id = "the-ring";

  // add the ring as a child of Frodo
  var frodo = document.getElementById("Frodo Baggins");
  frodo.appendChild(ring);
}

keepItSecretKeepItSafe();

function makeBuddies(buddies) {
  // create an aside tag
  var aside = document.createElement("aside");
  // display an unordered list of buddies in the aside
  var ul = document.createElement("ul");
  aside.appendChild(ul);
  // insert your aside before rivendell
  var rivendell = document.getElementById("Rivendell");
  rivendell.insertAdjacentElement("beforeBegin", aside);
}

makeBuddies(buddies);

function beautifulStranger() {
}

function forgeTheFellowShip() {
}