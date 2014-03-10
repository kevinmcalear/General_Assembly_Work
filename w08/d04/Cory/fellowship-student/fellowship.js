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

// query the section tag
var section = document.getElementById("middle-earth");
// iterate through the lands array
// craete article and h1 tags
// add land name to each h1 tag
// add h1's to the article tag
function makeMiddleEarth(lands) {
  for(var i = 0; i < lands.length; i++) {
    var article = document.createElement("article");
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];
    article.appendChild(h1);
    section.appendChild(article);
  };

}
  // call it
  makeMiddleEarth(lands);


var middleEarth = document.querySelector("section")
var shire = middleEarth.children[0];

function makeHobbits(hobbits) {
  var ul = document.createElement("ul");
  for(var i = 0; i < hobbits.length; i++) {
    var li = document.createElement("li");
    li.className = "hobbit";
    li.innerText = hobbits[i];
    ul.appendChild(li);
    shire.appendChild(ul);
  };

}

makeHobbits(hobbits);


var hobbit = document.querySelector("li");

function keepItSecretKeepItSafe() {
  var div = document.createElement("div");
  div.id = "the-ring";
  hobbit.appendChild(div);
};

keepItSecretKeepItSafe();

var body = document.querySelector("body");

function makeBuddies(buddies) {
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");
  for(var i = 0; i < buddies.length; i++) {
    var li = document.createElement("li");
    li.innerText = buddies[i];
    ul.appendChild(li);
    aside.appendChild(ul);
    body.appendChild(aside);
  };
}

makeBuddies(buddies);

function beautifulStranger() {
}

function forgeTheFellowShip() {
}