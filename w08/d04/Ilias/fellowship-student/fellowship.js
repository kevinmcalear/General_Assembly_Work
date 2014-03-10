// Dramatis Personae

var buddies = [
  "Gandalf the Grey",
  "Legolas",
  "Gimli",
  "Strider",
  "Boromir"
];

var lands = ["The Shire", "Rivendell", "Mordor"];

//define makeMiddleEarth
function makeMiddleEarth(lands) {
  var section = document.createElement("section");
  section.id = "middle-earth";
  var article = document.createElement("article");

  for (var i = 0; i < lands.length; i++){
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];
    article.appendChild(h1);
  }
  var body = document.querySelector("body");
  body.appendChild(article);
}

//run makeMiddleEarth
makeMiddleEarth(lands);


var hobbits = [
  "Frodo Baggins",
  "Samwise 'Sam' Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin 'Pippin' Took"
];

//def
function makeHobbits(hobbits) {
  var ul = document.createElement("ul");

  for (var i = 0; i < hobbits.length; i++){
    var li = document.createElement("li");
    li.innerText = hobbits[i];
    li.className = "hobbit";
    ul.appendChild(li);
  }
  var body = document.querySelector("body");
  body.appendChild(ul);
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var div = document.createElement("div");
  frodo = document.querySelector("ul li:nth-child(1)");
  frodo.appendChild(div);
}
keepItSecretKeepItSafe();

function makeBuddies(buddies) {
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");
  for (var i = 0; i < buddies.length; i++){
    var li = document.createElement("li");
    li.innerText = buddies[i];
    ul.appendChild(li);
  }
  aside.appendChild(ul);
  rivendell = document.querySelector("article h1:nth-child(2)");
  rivendell.appendChild(aside);
}
makeBuddies(buddies);

function beautifulStranger() {
}

function forgeTheFellowShip() {
}