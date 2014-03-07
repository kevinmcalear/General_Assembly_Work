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
  // select section tag with an id of middle-earth
  var selectSection = document.querySelector("#middle-earth");

  for(var i = 0; i < lands.length; i++) {
    var article = document.createElement("article");
    article.id = lands[i];

    // inside each article tag include an h1 with the name of the land
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];

    // append middle-earth to your document body
    article.insertAdjacentElement('afterBegin', h1);

    // add each land as an article tag
    selectSection.appendChild(article);
  }
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var ul = document.createElement("ul");

  for(var i = 0; i < hobbits.length; i++) {
    var li = document.createElement("li");

    // give each hobbit a class of hobbit
    li.className = hobbits[i];
    li.innerText = hobbits[i];
    ul.appendChild(li);
  }
  
  var shireID = document.getElementById("The Shire");
  console.log(shireID);
  shireID.appendChild(ul);
  
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
}

function makeBuddies(buddies) {
}

function beautifulStranger() {
}

function forgeTheFellowShip() {
}