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

var baddies = [
"Sauron",
"Saruman", 
"The Uruk-hai", 
"Orcs"
];

var lands = ["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands) {
    // create a section tag with an id of middle-earth
    $("<section id='middle-earth'></section>").appendTo("body");
    // add each land as an article tag
    lands.forEach(function(element){
      $("<article><h1>" + element + "</h1></article>").appendTo("#middle-earth");
    });
    // inside each article tag include an h1 with the name of the land      

  };

  makeMiddleEarth(lands);

  function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  $("<ul></ul>").appendTo("article:contains('The Shire')");
  hobbits.forEach(function(element){
    $("<li>").appendTo("ul").addClass("hobbit").text(element);
  });
  // give each hobbit a class of hobbit
};

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  $("<div id='the-ring'>").appendTo("li:contains('Frodo')");
};

keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  $("<ul>").appendTo("article:contains('Mordor')")
  baddies.forEach(function(element){
    $("<li>").appendTo("ul:last").text(element);
  });
  // display an unordered list of baddies in Mordor
}

makeBaddies(baddies);

function makeBuddies(buddies) {
  // create an aside tag
  $("<aside>").appendTo("body");
  // display an unordered list of buddies in the aside
  $("<ul>").appendTo("aside");
  buddies.forEach(function(element){
    $("<li>").appendTo("aside ul").text(element);
  });
  // Make the Gandalf text node have a grey background
  $("li:contains('Gandalf')").css("background", "gray");
}

makeBuddies(buddies);

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  $("ul:first").appendTo("article:contains('Rivendell')")
}

leaveTheShire();

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $("li:contains('Strider')").text("Aragorn")
}

beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  $("aside ul").appendTo("article:contains('Rivendell')")
  // create a new div called 'the-fellowship'
  $("<div>").addClass("the-fellowship").appendTo("article:contains('Rivendell')")
  // add each hobbit and buddy one at a time to 'the-fellowship'
  $("")
  // after each character is added make an alert that they have joined your party
}

forgeTheFellowShip();
