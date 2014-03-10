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
  var middleEarth = document.createElement("section");
  for(var i = 0; i < lands.length; i ++) {
  var article = document.createElement("article");
  article.innerText = lands[i];
  lands.appendChild(article);
  }
}
  var section = document.querySelector("section");
  section.insertAdjacentHTML("afterbegin", article);


function makeHobbits(hobbits) {

}

function keepItSecretKeepItSafe() {
}

function makeBuddies(buddies) {
}

function beautifulStranger() {
}

function forgeTheFellowShip() {
}