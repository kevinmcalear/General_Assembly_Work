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

var body = document.querySelector("body");

function makeMiddleEarth(lands){
  var middleEarth = document.createElement("section");
  middleEarth.id = "middle-earth";
  this.lands = lands;

  for (var i =0; i < lands.length; ++i){
    land = document.createElement("article");
    h1 = document.createElement("h1"); 
    h1.innerText = (lands[i]);
    land.appendChild(h1);
    middleEarth.appendChild(land);
  }
  body.appendChild(middleEarth);
};

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  var ul = document.createElement("ul");

  for (var i = 0; i < hobbits.length; ++i){
    var li = document.createElement("li");
    li.className = "hobbit";
    li.innerText = (hobbits[i]);
    ul.appendChild(li);
  };

body.appendChild(ul);
}
makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  ring = document.createElement("div");
  ring.id = "the-ring";
  frodo = document.querySelectorAll(".hobbit")[0];
  frodo.appendChild(ring);
}
keepItSecretKeepItSafe();

function makeBuddies(buddies) {
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");

  for (var i = 0; i < buddies.length; ++i) {
    var buddy = document.createElement("li");
    buddy.innerText = buddies[i];
    ul.appendChild(buddy);
  };
  aside.appendChild(ul);

  var lands = document.querySelectorAll("#middle-earth")[1]
  var rivendell = lands.querySelectorAll("article")[1];
  rivendell.insertAdjacentElement("beforebegin", aside);

}

makeBuddies(buddies);

function beautifulStranger() {
  var strider = document.querySelectorAll("li")[3];
  strider.innerText = "Aragorn";
}

beautifulStranger();

function forgeTheFellowShip() {
}