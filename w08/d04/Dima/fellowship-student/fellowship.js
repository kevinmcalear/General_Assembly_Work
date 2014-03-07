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
  //create middle earth section
  var middleEarth = document.createElement("section");
  //start the loop for every lands element
  for (var i = 0; i < lands.length; i++) {
    var article = document.createElement("article");
    article.id = lands[i].replace(/ /g,"");
    var heading = document.createElement("h1");
    heading.innerText = lands[i];

    article.appendChild(heading);
    middleEarth.appendChild(article);
  };
  document.body.appendChild(middleEarth);
}
makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  var ul = document.createElement("ul");
  var theShire = document.querySelector("#TheShire");
  for (var i = 0; i < hobbits.length; i++) {
    var li = document.createElement("li");
    li.className = "hobbit";
    li.innerText = hobbits[i];
    ul.appendChild(li);

  };
  theShire.appendChild(ul)
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var div = document.createElement("div");
  div.className = "the-ring";
  var Frodo = document.querySelector("#")

};

keepItSecretKeepItSafe()

function makeBuddies(buddies) {
}

function beautifulStranger() {
}

function forgeTheFellowShip() {
}