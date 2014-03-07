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
var shireHobbits = document.createElement("ul");

function makeMiddleEarth(lands) {
  this.lands = lands;
  var middleEarth = document.createElement("section");
  middleEarth.id = "middle-earth";
  for(var i = 0; i < lands.length; i++){
    var article = document.createElement("article");
    article.id = this.lands[i];
    var h1 = document.createElement("h1");
    middleEarth.appendChild(article);
    h1.innerText = this.lands[i];
    article.appendChild(h1);
  }
  document.body.appendChild(middleEarth);
}
makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  this.hobbits = hobbits;

  for(var i = 0; i < hobbits.length; i++){
    var li = document.createElement("li");
    li.innerText = hobbits[i];
    li.class = "shire";
    shireHobbits.appendChild(li);
  }
  var shire = document.querySelector("h1");
  shire.insertAdjacentElement("afterend", shireHobbits);
}
makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  frodo = document.querySelector("li");
  ring = document.createElement("div");
  ring.id = "the-ring";
  frodo.insertAdjacentElement("beforeend", ring);
}
keepItSecretKeepItSafe();

function makeBuddies(buddies) {
  this.buddies = buddies;
  var aside = document.createElement("aside");
  var buds = document.createElement("ul");
  aside.appendChild(buds);
  rivendell = document.getElementById("Rivendell");

  for(var i = 0; i < buddies.length; i++){
    var li = document.createElement("li");
    li.innerText = buddies[i];
    li.id = buddies[i];
    buds.appendChild(li);
  }
  rivendell.insertAdjacentElement("beforebegin", aside);
}
makeBuddies(buddies);

function beautifulStranger() {
  strider = document.getElementById("Strider");
  strider.innerText = "Aragorn";
}
beautifulStranger();

function forgeTheFellowShip() {
  shire = getElementById("");
}



