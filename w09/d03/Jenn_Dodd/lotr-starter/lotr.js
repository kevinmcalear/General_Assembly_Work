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

var mordor = "article:contains('Mordor')"

// 1


function makeMiddleEarth(lands) {
  $("<section>").attr("id", "middle-earth").appendTo("body");

  $.each(lands, function(i, land){
    var place = $("<article></article").appendTo("section#middle-earth");
    $("<h1>").text(land).appendTo(place);
  });     
}

makeMiddleEarth(lands);

// 2

function makeHobbits(hobbits) {
  $("<ul>").appendTo("article:first-child");

  $.each( hobbits, function(i, hobbit){
    $("<li>").addClass("hobbit").text(hobbit).appendTo("ul");
  });
}

makeHobbits(hobbits);


// 3

function keepItSecretKeepItSafe() {
  $("<div>").attr("id", "the-ring").appendTo("li:contains('Frodo')");
}

keepItSecretKeepItSafe();

// 4

function makeBaddies(baddies) {
  $("<ul>").attr("id", "baddies").appendTo("article:last-child");

  $.each( baddies, function(i, badGuy){
    $("<li>").text(badGuy).appendTo("#baddies");
  });
}

makeBaddies(baddies);


// 5

function makeBuddies(buddies) {
  $("<aside>").appendTo("body");

  var friends = $("<ul>").appendTo("aside");

  $.each( buddies, function(i, friend){
    $("<li>").text(friend).appendTo(friends);
  });

  $("li:contains('Gandalf')").css("background", "grey");
}

makeBuddies(buddies);

// 6

function leaveTheShire() {
  $("li.hobbit").parent().appendTo("article:contains('Rivendell')");
}

leaveTheShire();

// 7 

function beautifulStranger() {  
  $("li:contains('Strider')").text("Aragorn");
}

beautifulStranger();

// 8 

function forgeTheFellowShip() {
  $("<div>").attr("id", "the-fellowship").appendTo("article:contains('Rivendell')");

  $("aside li").each(function(){
    $( this ).appendTo("#the-fellowship");
    alert( $(this).text() + " has joined the party");
  });

}

forgeTheFellowShip();

// 9

function theBalrog() {
  var gandalf = $("li:contains('Gandalf')").text("Gandalf the White");
  $(gandalf).css({"background": "white", "border": "2px solid grey"});

}

theBalrog();

// 10 

function hornOfGondor() {

  alert("The horn of gondor has been blown!");
  var boromir = $("li:contains('Boromir')").css("text-decoration", "line-through");

  $("li:contains('Uruk-hai')").remove();

  $("<footer>").appendTo("body");

  $("li:contains('Boromir')").appendTo("footer");

}

hornOfGondor(); 

// 11



function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  $("li:contains('Frodo')").appendTo(mordor);
  $("li:contains('Sam')").appendTo(mordor);  
  // add a div with an id of 'mount-doom' to Mordor
  $("<div>").attr("id", "mount-doom").appendTo(mordor); 
}

itsDangerousToGoAlone();

// 12

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  $("<div>").attr("id", "gollum").appendTo(mordor);
  // Remove the ring from Frodo and give it to Gollum
  $("div#the-ring").appendTo("div#gollum");
  // Move Gollum into Mount Doom
  $("div#gollum").appendTo("div#mount-doom");
}

weWantsIt();

// 13

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  $("div#gollum").remove();
  // remove all the baddies from the document
  $("#baddies").remove();
  // Move all the hobbits back to the shire
  $("li.hobbit").appendTo("li:contains('Merry')").parent();
  $("li.hobbit").parent().appendTo("article:first-child");
}

thereAndBackAgain();






























