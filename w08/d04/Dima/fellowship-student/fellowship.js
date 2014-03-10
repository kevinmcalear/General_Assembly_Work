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
  //create middle earth section
  var section = document.createElement("section");
  var middleEarth = document.querySelector("#middle-earth")
  //start the loop for every lands element
  for (var i = 0; i < lands.length; i++) {
    var article = document.createElement("article");
    article.id = lands[i].replace(/ /g,"");
    var h1 = document.createElement("h1");
    h1.innerText = lands[i];
    article.appendChild(h1);
    middleEarth.appendChild(article);
  };

}
makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  var ul = document.createElement("ul");
  var theShire = document.querySelector("#TheShire");
  for (var i = 0; i < hobbits.length; i++) {
    var li = document.createElement("li");
    li.className = "hobbit";
    li.id = hobbits[i].replace(/ /g,"");
    li.innerText = hobbits[i];
    ul.appendChild(li);

  };
  theShire.appendChild(ul)
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var ring = document.createElement("div");
  ring.id = "the-ring";
  var frodo = document.querySelector("#FrodoBaggins");
  frodo.appendChild(ring);
};

keepItSecretKeepItSafe()

function makeBuddies(buddies) {
  var asideTag = document.createElement("aside");
  var ulTag = document.createElement("ul");
  for (var i = 0; i < buddies.length; i++) {
    var li = document.createElement("li");
    li.className = "buddy";
    li.id = buddies[i].replace(/ /g,"");
    li.innerText = buddies[i];
    ulTag.appendChild(li);
    asideTag.appendChild(ulTag);
  }

  var rivendell = document.getElementById("Rivendell")
  rivendell.insertAdjacentElement("beforeBegin", asideTag)
};

makeBuddies(buddies)

function beautifulStranger() {
  var strider = document.getElementById("Strider");
  strider.innerText = "Aragorn"
};

beautifulStranger()

function forgeTheFellowShip() {
  
}