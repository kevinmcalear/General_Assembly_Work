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
  var middleEarth = document.createElement("section");
  middleEarth.id = "middle-earth"; 
  // add each land as an article tag
  var i = 0
  while (i < lands.length) {
    var land = document.createElement("article");
    var h1 = document.createElement("h1");
    // inside each article tag include an h1 with the name of the land
    h1.innerText = lands[i];
    land.appendChild(h1);
    middleEarth.appendChild(land);
    i++
  };
  // append middle-earth to your document body
  body = document.querySelector("body");
  body.insertAdjacentElement("afterend", middleEarth);

};

makeMiddleEarth(lands);


function makeHobbits(hobbits) {
   // display an unordered list of hobbits in the shire
   var ul = document.createElement("ul");

   var i = 0;
   while (i < hobbits.length) {
      var li = document.createElement("li");
      li.innerText = hobbits[i];
       // give each hobbit a class of hobbit
      li.className = "hobbit";
      ul.appendChild(li); 
      i++
   };

   middleEarth = document.querySelector("section");
   middleEarth.insertAdjacentElement("afterend", ul);
};

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
   // create a div with an id of 'the-ring'
   div = document.createElement("div");
   div.id = "the-ring";
  // add the ring as a child of Frodo
  var hobbits = document.querySelector("ul");
  var frodo = hobbits.firstChild;
  frodo.appendChild(div);
}

keepItSecretKeepItSafe();

function makeBuddies(buddies) {
  // create an aside tag
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");
  // display an unordered list of buddies in the aside
  var i = 0;
  while (i < buddies.length){
    var buddy = document.createElement("li");
    buddy.innerText = buddies[i];
    ul.appendChild(buddy);
    i++
  };

  // insert your aside before rivendell
  aside.appendChild(ul);
  var rivendell = document.querySelector("section");
  var rivendellFind = rivendell.querySelectorAll("article")[1];
  rivendellFind.insertAdjacentElement("beforebegin", aside);

};

makeBuddies(buddies);

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var aside = document.querySelector("aside");
  var ul = aside.querySelector("ul")
  striderFinder = ul.querySelectorAll("li")[3];
  striderFinder.innerText = "Aragorn";
};

beautifulStranger(buddies);

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}
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
