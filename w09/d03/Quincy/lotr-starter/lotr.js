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

var baddies = [
  "Sauron",
  "Saruman",
  "The Uruk-hai",
  "Orcs"
];

var lands = ["The Shire", "Rivendell", "Mordor"];

// Number 1

function makeMiddleEarth(lands) {
  // create a section tag with an id of middle-earth
  var sec = $( '<section id="middle-earth"></section>' );
  sec.appendTo("body");
  // add each land as an article tag
  for ( var i = 0; i < lands.length; i++ ) {
    var land = $('<article>');
  // inside each article tag include an h1 with the name of the land
    var h1 = $('<h1>');
    h1.text(lands[i]);
    h1.appendTo(land);
    land.appendTo(sec);
  }
};
makeMiddleEarth(lands);

//Number 2

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var ul = $('<ul>').appendTo("article:contains('The Shire')");
  for ( var i = 0; i < hobbits.length; i++ ) {
    var li = $('<li>').text(hobbits[i]).appendTo( ul );
    // give each hobbit a class of hobbit
    li.addClass("hobbit");
  }
  var shire = $ ("h1").first();
  ul.appendTo(shire);
};

makeHobbits(hobbits);

// Number 3

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var div = $ ('<div id="the-ring"></div>').appendTo("body");
  // add the ring as a child of Frodo
  var frodo = $ ( "li.hobbit").first();
  $( frodo ).append( div );
}
keepItSecretKeepItSafe();

// Number 4

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var ul = $('<ul>');
  for ( var i = 0; i < baddies.length; i++ ) {
    var li = $('<li>').text(baddies[i]).appendTo( ul );
  }
  var mordor = $ ('h1')[2];
  ul.appendTo(mordor);
}
makeBaddies(baddies);

// Number 5

function makeBuddies(buddies) {
  // create an aside tag
  var aside = $('<aside>');
  // display an unordered list of buddies in the aside
  var ul = $('<ul>');
  for ( var i = 0; i < buddies.length; i++ ) {
    var li = $('<li>').text(buddies[i]).appendTo( ul );
  }
  ul.appendTo(aside);
  aside.appendTo("body");
  // Make the Gandalf text node have a grey background
  $("li:contains('Gandalf the Grey')").css({ "background-color": "gray"})
}
makeBuddies(buddies);

// Number 6

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var li = $ ('li.hobbit');
  li.detach();
  $ ("article:contains('Rivendell')").append(li);
}
leaveTheShire();

// Number 7

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $ ('li:contains("Strider")').text("Aragon");
}
beautifulStranger();

// Number 8

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  var ul = $ ('aside').children();
  $ $ ("article:contains('Rivendell')").append(ul);
  // create a new div called 'the-fellowship'
  var div = $ ('<div id="the-fellowship"></div>').appendTo("body");
  // add each hobbit and buddy one at a time to 'the-fellowship'
  for ( var i = 0; i < hobbits.length; i++){

  }
  // after each character is added make an alert that they have joined your party
}


