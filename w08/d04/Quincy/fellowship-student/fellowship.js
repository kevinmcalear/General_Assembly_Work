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
  var section = document.querySelector("#middle-earth");
  for (var i = 0; i < lands.length; i++ ) {
    var article = document.createElement('article');
    article.id = lands[i];
    section.appendChild(article);

    var h1 = document.createElement('h1');
    h1.innerHTML = lands[i];
    article.appendChild(h1);
  }
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  var section = document.querySelector("#middle-earth");
  var ul = document.createElement('ul');
  for (var i = 0; i < hobbits.length; i++ )
    var h1 = document.createElement('h1');
    h1.innerHTML = hobbits[i];
    ul.appendChild(h1);
  }
}

// function keepItSecretKeepItSafe() {
//   var section = document.querySelector("section");
//   document.section.createElement('div id=the-ring')
//   // child of frodo??
// }

// function makeBuddies(buddies) {
//   var section = document.querySelector("section");
//    document.section.createElement('aside');
//    for (var i = 0; i < hobbits.length; i++ )
//     document.section.createElement('ul')


// }

// function beautifulStranger() {
// }

// function forgeTheFellowShip() {
// }
