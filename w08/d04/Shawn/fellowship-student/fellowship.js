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
  // var middleEarth = document.createElement("section");
  middleEarth = document.querySelector("section");
  
  
  for(var i = 0; i < lands.length; i++) {
    var article = document.createElement("article");
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];
    article.insertAdjacentElement("afterbegin", h1);
    middleEarth.insertAdjacentElement("afterbegin", article);
  }
};

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var ul = document.createElement("ul");
  middleEarth.insertAdjacentElement("afterend", ul)

  for(var i = 0; i < hobbits.length; i++) {
    var li = document.createElement("li");
    var hobbit = hobbits[i].split(" ")[0];
    li.className = hobbit;
    li.innerText = hobbits[i];
    ul.insertAdjacentElement("afterbegin", li);
  }
}
makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var div = document.createElement("div");
  div.id = "the-ring";
  var Frodo = document.querySelector(".Frodo");
  Frodo.insertAdjacentElement("beforeend", div);
  // add the ring as a child of Frodo
}
keepItSecretKeepItSafe();

function makeBuddies(buddies) {
  // create an aside tag
  var aside = document.createElement("aside");
  // display an unordered list of buddies in the aside
  var ul = document.createElement("ul");

  for(var i = 0; i < buddies.length; i++) {
    var li = document.createElement("li");
    li.innerText = buddies[i];
    ul.insertAdjacentElement("afterbegin", li);
  }
  var h1 = document.querySelectorAll("h1");
  h1[1].insertAdjacentElement("beforeBegin", ul);
  // insert your aside before rivendell
}
makeBuddies(buddies);

function beautifulStranger() {
  var li = document.querySelectorAll("li");
  li[1].innerText = "Aragorn";
}
beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}