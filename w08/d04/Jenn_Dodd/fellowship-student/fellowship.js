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

var rivendell;

function makeMiddleEarth(lands) {
  var section = document.createElement("section");
  section.id = "middle-earth";
  for (var i = 0; i < lands.length; i++) {
    var article = document.createElement("article");
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];
    article.appendChild(h1);
    section.appendChild(article);
  };
  body.appendChild(section);
};

function makeHobbits(hobbits) {
  var ul = document.createElement("ul");

  for (var i = 0; i < hobbits.length; i++) {
    var li = document.createElement("li");
    li.innerText = hobbits[i];
    li.className = "hobbit";
    ul.appendChild(li);
  };

  body.appendChild(ul);
};

function keepItSecretKeepItSafe() {
  var div = document.createElement("div");
  div.id = "the-ring";
  var frodo = document.querySelector("li");
  frodo.appendChild(div);
};

function makeBuddies(buddies) {
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");

  for(var i = 0; i < buddies.length; i++) {
    var li = document.createElement("li");
    li.innerText = buddies[i];
    ul.appendChild(li)
  };

  aside.appendChild(ul);

  findRivendell();

  rivendell.insertAdjacentElement('beforebegin', aside);
};

function beautifulStranger() {
  var lis = document.querySelectorAll("li");
  var findStrider = "Strider"
  for(var i = 0; i < lis.length; i++) {
    var aragorn;
    if (lis[i].textContent == findStrider) {
      aragorn = lis[i];
    };
  };
  aragorn.innerText = "Aragorn";
};

function forgeTheFellowShip() {
  var fellowship = document.createElement("div");

  findRivendell();

  rivendell.insertAdjacentElement('afterend', fellowship);
  var fellows = document.querySelectorAll("li");

  for(var i = 0; i < fellows.length; i++) {
    fellowship.appendChild(fellows[i]);
    alert(fellows[i].textContent + " hath joined the party.");
  };
};

function findRivendell() {
  var h1s = document.querySelectorAll("h1");
  var findRiv = "Rivendell";

  for(var i = 0; i < h1s.length; i++) {
    if (h1s[i].textContent == findRiv) {
      rivendell = h1s[i];
    };
  };
  return rivendell;
};



makeMiddleEarth(lands);
makeHobbits(hobbits);
keepItSecretKeepItSafe();
makeBuddies(buddies);
beautifulStranger();
forgeTheFellowShip();
















