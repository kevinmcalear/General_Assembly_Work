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
<<<<<<< HEAD
  // create a section tag with an id of middle-earth
  var section = document.createElement("section");
  section.id = "middle-earth";

  // add each land as an article tag
  for (var i = 0; i < lands.length; i++) {
    var article = document.createElement("article");
    // inside each article tag include an h1 with the name of the land
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];
    h1.id = lands[i].replace(/ /g, "-");
    article.appendChild(h1);
    section.appendChild(article);
  }

  // append middle-earth to your document body
  var body = document.querySelector("body");
  body.appendChild(section);
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var ul = document.createElement("ul");
  ul.id = "hobbits";
  for (var i = 0; i < hobbits.length; i++) {
    var li = document.createElement("li");
    // give each hobbit a class of hobbit
    li.className = "hobbit";
    li.id = hobbits[i].split(" ")[0];
    li.innerText = hobbits[i];
    ul.appendChild(li);
  }
  var shire = document.querySelector("h1#The-Shire");
  shire.appendChild(ul);
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var div = document.createElement("div");
  div.id = "the-ring";
  // add the ring as a child of Frodo
  var frodo = document.querySelector("li.hobbit#Frodo");
  frodo.appendChild(div);
  // debugger;
}
keepItSecretKeepItSafe();

function makeBuddies(buddies) {
  // create an aside tag
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");
  ul.id = "buddies";
  // display an unordered list of buddies in the aside
  for (var i = 0; i < buddies.length; i++) {
    var li = document.createElement("li");
    li.innerText = buddies[i];
    li.id = buddies[i].split(" ")[0];
    li.className = "buddy";
    ul.appendChild(li);
  }
  aside.appendChild(ul);
  // insert your aside before rivendell
  var rivendell = document.querySelector("h1#Rivendell");
  rivendell.insertAdjacentElement("beforebegin", aside);
}

makeBuddies(buddies);

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var li = document.querySelectorAll("li");
  var strider = document.querySelector("li#Strider");
  
  strider.innerText = "Aragorn";
}
beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  var hobbitsUl = document.querySelector("ul#hobbits");
  var buddiesUl = document.querySelector("ul#buddies");
  var rivendell = document.querySelector("h1#Rivendell");

  rivendell.appendChild(hobbitsUl);
  rivendell.appendChild(buddiesUl);

  // create a new div called 'the-fellowship'
  var div = document.createElement("div");
  div.id = "the-fellowship";
  var newUl = document.createElement("ul");
  newUl.id = "final";
  div.appendChild(newUl);
  var mordor = document.querySelector("h1#Mordor");
  mordor.appendChild(div);

  // add each hobbit and buddy one at a time to 'the-fellowship'

  for (var i = 0; i < hobbits.length; i++) {
    var hobbit = document.querySelector(".hobbit");
    newUl.appendChild(hobbit);
    alert(hobbits[i] + " has come to the fellowship!");
  }

  for (var j = 0; j < buddies.length; j++) {
    var buddy = document.querySelector(".buddy");
    div.appendChild(buddy);
    // after each character is added make an alert that they have joined your party
    alert(buddies[j] + " has come to the fellowship!");
  }



}
forgeTheFellowShip();



=======
}

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
>>>>>>> 0c2ec161d776e96cbe96741fe4b44960f9205967
