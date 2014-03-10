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

makeMiddleEarth(lands);
makeHobbits(hobbits);
keepItSecretKeepItSafe();
makeBuddies(buddies);
beautifulStranger();
forgeTheFellowShip();

function makeMiddleEarth(lands) {

  var middleEarth = document.querySelector("section");

  for(var i=0; i<lands.length; i++) {
    article = document.createElement("article");
    h1 = document.createElement("h1");
    h1.innerText = lands[i];
    article.appendChild(h1);
    middleEarth.appendChild(article);
  }
}


function makeHobbits(hobbits) {

  var theShire = document.querySelector("article");
  var list = document.createElement("ul");

  for(var i=0; i<hobbits.length; i++) {
    var li = document.createElement("li");
    li.innerText = hobbits[i];
    li.className = "hobbit";
    list.appendChild(li);
  }
  theShire.appendChild(list);
}

function keepItSecretKeepItSafe() {
  var theRing = document.createElement("div");
  theRing.id = "the-ring"
  var Frodo = document.querySelector(".hobbit");
  Frodo.appendChild(theRing);
}

function makeBuddies(buddies) {
  var aside = document.createElement("aside");
  var list = document.createElement("ul");

  for(var i=0; i<buddies.length; i++) {
    var li = document.createElement("li");
    li.innerText = buddies[i];
    list.appendChild(li);
  }
  aside.appendChild(list);

  var lands = document.querySelectorAll("article");
  var rivendell = lands[1];

  rivendell.insertAdjacentElement("beforebegin", aside);
}

function beautifulStranger() {
  var asideList = document.querySelectorAll("aside > ul > li");
  asideList[3].innerText = "Aragorn";
}

function forgeTheFellowShip() {
  var lands = document.querySelectorAll("article");
  var rivendell = lands[1];
  var hobbits = document.querySelectorAll(".hobbit");
  var buddies = document.querySelectorAll("aside > ul > li");
  
  for(var i=0; i<hobbits.length; i++){
    rivendell.insertAdjacentElement("beforeend", hobbits[i]);
  }
  for(var i=0; i<buddies.length; i++){
    rivendell.insertAdjacentElement("beforeend", buddies[i]);
  }

  hobbitsAndBuddies = document.querySelectorAll("article > li");

  var theFellowship = document.createElement("div");
  theFellowship.id = "the-fellowship";

  for(var i=0; i<hobbitsAndBuddies.length; i++){
    theFellowship.insertAdjacentElement("beforeend", hobbitsAndBuddies[i]);
    alert(hobbitsAndBuddies[i].innerText + " has joined The Fellowship!");
  }
}