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

function makeMiddleEarth() {
  // debugger
  var middleEarth = document.createElement("section");
  middleEarth.id = "middleEarth";
  for(var i = 0; i < lands.length; i++){
    var article = document.createElement("article");
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];
    article.id = lands[i].replace(/ /,"");
    article.appendChild(h1);
    middleEarth.appendChild(article);
  }
  var body = document.querySelector("body");
  body.appendChild(middleEarth);
}

makeMiddleEarth();

function makeHobbits() {
  var hobbitsList = document.createElement("ul");
  for(var i = 0; i < hobbits.length; i++){
    var li = document.createElement("li");
    li.innerText = hobbits[i];
    li.className = "hobbit";
    li.id = hobbits[i].replace(/ /,"");
    hobbitsList.appendChild(li);
  }
  var shire = document.querySelector("#TheShire");
  shire.appendChild(hobbitsList);
}
makeHobbits();

function keepItSecretKeepItSafe() {
  var theRing = document.createElement("div");
  theRing.id = "theRing";
  var frodo = document.querySelector("#FrodoBaggins");
  frodo.appendChild(theRing);
}
keepItSecretKeepItSafe();

function makeBuddies() {
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");
  for(var i = 0; i < buddies.length; i++){
    var li = document.createElement("li");
    li.innerText = buddies[i];
    ul.appendChild(li);
  }
  aside.appendChild(ul);
  var rivendell = document.querySelector("#Rivendell");
  rivendell.insertAdjacentElement("beforebegin", aside);
}
makeBuddies();

function beautifulStranger() {
}

function forgeTheFellowShip() {
}