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

function makeMiddleEarth(lands) {
  $("<section id='middle-earth'>").appendTo('body');
  for(var i = 0; i < lands.length; i++){
  $("<article><h1>" + lands[i] + "</h1></article>").appendTo("section");
  }
}
makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  var shire = $("h1:contains('The Shire')");
  $("<ul id='allhobbits'>").appendTo(shire);
  for(var i = 0; i < hobbits.length; i++) {
    $("<li class='hobbit'>" + hobbits[i] + "</li>").appendTo("ul");
  }
}
makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var frodo = $("li:contains('Frodo Baggins')");
  $("<div id='the-ring'>").appendTo(frodo);
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
}
keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  var mordor = $("h1:contains('Mordor')");
  var mordorland = $("<ul id=baddies>").appendTo(mordor);
  for(var i = 0; i < baddies.length; i++){
    $("<li>" + baddies[i] + "</li>").appendTo(mordorland);
  }
  // display an unordered list of baddies in Mordor
}
makeBaddies(baddies);

function makeBuddies(buddies) {
  $("<aside id='buddies'>").appendTo("body");
  var buddieslist = $("<ul>").appendTo("aside");
  for(var i = 0; i < buddies.length; i++) {
    $("<li class='buddies'>" + buddies[i] + "</lu>").appendTo(buddieslist);
  }
  $("li:contains('Gandalf')").css("background", "gray");
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
}

makeBuddies(buddies);

function leaveTheShire() {
  var rivendell = $("h1:contains('Rivendell')");
  var takethehobbits = $("#allhobbits").detach();
  $(takethehobbits).appendTo(rivendell);
  // assemble the hobbits and move them to Rivendell
}
leaveTheShire();

function beautifulStranger() {
  $("li:contains('Strider')").text("Aragorn");
  // change the buddy 'Strider' textnode to "Aragorn"
}

beautifulStranger();

function forgeTheFellowShip() {
  var rivendell = $("h1:contains('Rivendell')");
  var takethebuddies = $("#buddies").detach();
  $(takethebuddies).appendTo(rivendell);
  var fellowship = $("<div id='fellowship'>").text("The Fellowship").appendTo(rivendell);
  
  var buddiesClass = $(".buddies");
  $(buddiesClass).each(function(i, buddy) {
    $(buddy).appendTo(fellowship);
    alert("Buddy Added!");
  });
  

  var hobbitClass = (".hobbit");
  $(hobbitClass).each(function(i, hobbit) {
    $(hobbit).appendTo(fellowship);
    alert("Hobbit Added!");
  });
  }
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party

forgeTheFellowShip();

function theBalrog() {
  $("li:contains('Gandalf')").text("Gandalf The White").css("background", "white").css("border", "2px solid grey");
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}

theBalrog();

function hornOfGondor() {
  $("<footer>").appendTo("body");
  alert("Horn of Gondor has been blown");
  var boromir = ("li:contains('Boromir')");
  $(boromir).css("text-decoration", "line-through");
  $("li:contains('Uruk-hai')").remove();
  var moveBoro = $(boromir).detach();
  $(moveBoro).appendTo("footer");

  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}

hornOfGondor();

function itsDangerousToGoAlone(){
  var mordor = $("h1:contains('Mordor')");
  var sam = $("li:contains('Sam')").detach();
  var frodo = $("li:contains('Frodo Baggins')").detach();
  $(sam).appendTo(mordor);
  $(frodo).appendTo(mordor);
  $("<div id='mount-doom'>").appendTo(mordor);

  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}

itsDangerousToGoAlone();

function weWantsIt() {
  var mordor = $("h1:contains('Mordor')");
  $("<div id='gollum'>").appendTo(mordor);
  var gollum = $('#gollum');
  var ring = $('#the-ring').detach();
  $(ring).appendTo(gollum);
  var moveGollum = $(gollum).detach();
  $(moveGollum).appendTo('#mount-doom');
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}

weWantsIt();

function thereAndBackAgain() {
  $("#gollum").remove();
  $("#baddies").remove();
  var shire = $("h1:contains('The Shire')");
  var moveHobbits = $("#allhobbits").detach();
  var hobbitsClass = $(".hobbit").detach();
  $(moveHobbits).appendTo(shire);
  $(hobbitsClass).appendTo('#allhobbits');


  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}
thereAndBackAgain();
