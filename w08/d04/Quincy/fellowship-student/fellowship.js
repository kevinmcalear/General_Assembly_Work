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
  var ul = section.createElement('ul');
  for (var i = 0; i < hobbits.length; i++ )
    var h1 = document.createElement('h1');
    h1.innerHTML = hobbits[i];
    ul.appendChild(h1);
  }
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var section = document.querySelector("#middle-earth");
  var div = section.createElement('div');
  div.id = 'the-ring';
  var frodo = document.querySelector("#Frodo Baggins");
  frodo.appendChild('#the-ring');
}

keepItSecretKeepItSafe(hobbits);

function makeBuddies(buddies) {
  var section = document.querySelector("#middle-earth");
  var aside = section.createElement('aside');
  var ul = aside.createElement('ul');
   for (var i = 0; i < hobbits.length; i++ ) {
    var h1 = document.createElement('h1');
    h1.innerHTML = buddies[i];
  }
  h1.appendChild('ul');
  ul.appendChild('aside');
};

makeBuddies(buddies)


// }

// function beautifulStranger() {
// }

// function forgeTheFellowShip() {
// }
