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
// create a section tag with an id of middle-earth
  var section = document.createElement("section");
  section.id = "middle-earth";
  var body = document.querySelector("body");
  // add each land as an article tag
  for(var i = 0; i < lands.length; i++){
    var article = document.createElement("article");
    article.innerText = lands[i];
    // inside each article tag include an h1 with the name of the land
    var h1 = document.createElement("h1");
    h1.id = (lands[i]).replace(/ /g,'');
    article.appendChild(h1);
    body.appendChild(article);
    // append middle-earth to your document body
      //document.appendChild(section.middle-earth);
    } // 
};

makeMiddleEarth();

function makeHobbits(hobbits) {
// display an unordered list of hobbits in the shire
// give the shire h1 an id
  var thesShireh1 = document.querySelector("#TheShire")
  var hobbitList = document.createElement("ul");
  theShireh1.appendChild(hobbitList);

  for(var i = 0; i < hobbits.length; i++){
    var li = document.createElement("li");
    li.innerText = hobbits[i];
    hobbitList.appendChild(li);
  } //end for loop
};
// give each hobbit a class of hobbit


function keepItSecretKeepItSafe() {
}

function makeBuddies(buddies) {
}

function beautifulStranger() {
}

function forgeTheFellowShip() {
}