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
  // create a section tag with an id of middle-earth
  var section = document.createElement("section");
  section.id = "middle-earth";

  // add each land as an article tag
  lands.forEach(function(element){
    var land = document.createElement("article");
    // inside each article tag include an h1 with the name of the land
    var h1 = document.createElement("h1");
    h1.innerText = element;
    land.id = element.replace(/ /,"");
    land.insertAdjacentElement("beforeend", h1);
    section.insertAdjacentElement("beforeend", land);
  });

  // append middle-earth to your document body
  document.body.appendChild(section);
};


makeMiddleEarth(lands);


function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var ul = document.createElement("ul");
  ul.id = "hobbits"
  // give each hobbit a class of hobbit
  hobbits.forEach(function(element){
    // create hobbit constructor
    var hobbit =  function(name){
      this.name = name;
    };

    // make each hobbit its own item
    var hobbit = new hobbit(element);
    var li = document.createElement("li");

    li.innerText = hobbit.name;
    li.id = hobbit.name.split(" ")[0].toLowerCase();
    li.className = "hobbit";

    ul.appendChild(li);
    
  });
  document.querySelector("#TheShire").appendChild(ul);
};

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var div = document.createElement("div");
  div.id = "the-ring"
  // add the ring as a child of Frodo
  document.querySelector("#frodo").appendChild(div);
};

keepItSecretKeepItSafe();

function makeBuddies(buddies) {
  // create an aside tag
  var aside = document.createElement("aside");
  var ul = document.createElement("ul");

  // display an unordered list of buddies in the aside
  buddies.forEach(function(element){
    var li = document.createElement("li");
    li.innerText = element;
    li.id = element.split(" ")[0].toLowerCase();
    ul.appendChild(li);
  });
  
  aside.appendChild(ul);

  // insert your aside before rivendell
  document.querySelector("#Rivendell").insertAdjacentElement("beforebegin", aside);
};

makeBuddies(buddies);

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var strider = document.getElementById("strider");
  strider.innerText = "Aragorn";
}

beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  var aside = document.querySelector("aside");
  var hobbits = document.querySelector("#hobbits");

  
  
  // create a new div called 'the-fellowship'

  
  // add each hobbit and buddy one at a time to 'the-fellowship'

  
  // after each character is added make an alert that they have joined your party


}