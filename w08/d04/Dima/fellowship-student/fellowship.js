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
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];

    article.appendChild(h1);
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
    li.id = hobbits[i].replace(/ /g,"");
    li.innerText = hobbits[i];
    ul.appendChild(li);

  };
  theShire.appendChild(ul)
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var div = document.createElement("div");
  div.className = "the-ring";
  var frodo = document.querySelector("#FrodoBaggins");
  var ring = document.querySelector(".the-ring")
  frodo.appendChild(ring);


};

keepItSecretKeepItSafe()

function makeBuddies(buddies) {
}

function beautifulStranger() {
}

function forgeTheFellowShip() {
}