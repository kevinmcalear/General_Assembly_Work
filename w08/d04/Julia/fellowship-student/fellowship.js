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
	body = document.querySelector("body");
	// create a section tag with an id of middle-earth
	// var middleEarth = document.createElement("section");

	// middleEarth = document.querySelector("section");

  middleEarth = document.querySelector("section");
	// body.insertAdjacentElement("afterbegin", section);
  // add each land as an article tag
  var i = 0;
  while(i < lands.length) {
  	var article = document.createElement("article");
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];
    article.insertAdjacentElement("afterbegin", h1);
    middleEarth.appendChild(article);
  	i++;

  };
  // inside each article tag include an h1 with the name of the land
  // append middle-earth to your document bod

};

makeMiddleEarth(lands);



function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit

  var ul = document.createElement("ul");
  middleEarth.insertAdjacentElement("afterend", ul);

  var i = 0;
  while(i < hobbits.length) {
    var li = document.createElement("li");
    var hobbit = hobbits[i].split(" ")[0];
    li.className = hobbit;
    ul.insertAdjacentElement("afterbegin", li);
    li.innerText = hobbits[i];
    i++;
  };

};

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var div = document.createElement("div");
  // var Frodo = document.querySelector("")
  div.id = "the-ring";
  var Frodo = document.querySelector(".Frodo");
  Frodo.insertAdjacentElement("beforeend", div);
  // add the ring as a child of Frodo
}

keepItSecretKeepItSafe();

function makeBuddies(buddies) {

  // create an aside tag
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");

  var i = 0;
  while(i < buddies.length) {
    li = document.createElement("li");
    li.innerText = buddies[i];
    ul.insertAdjacentElement("afterbegin", li);
    i++;
  };

  var h1 = document.querySelectorAll("h1");
  var rivendell = h1[1];

  rivendell.insertAdjacentElement("beforebegin", ul);
  // display an unordered list of buddies in the aside
  // insert your aside before rivendell
}

makeBuddies(buddies);

function beautifulStranger() {
}

function forgeTheFellowShip() {
}