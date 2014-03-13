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

    // create a section tag with an id of middle-earth
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land 
function makeMiddleEarth(lands) { 
  $("<section id='middle-earth'>").appendTo("body"); 
  lands.forEach(function(element){
    $("<article><h1>"+ element +"</h1></article>").appendTo("#middle-earth");
  });

};

$(makeMiddleEarth(lands));


function makeHobbits(hobbits) {
  $("<ul></ul>").appendTo("article:contains('The Shire')");
  $.each( hobbits, function(index, value){
    $("<li>"+ value +"</li>").appendTo("ul").addClass("hobbit");
  });
};

makeHobbits(hobbits);


function keepItSecretKeepItSafe() {
  $("<div id='the-ring'>").appendTo("li:contains('Frodo')");
};

keepItSecretKeepItSafe();
// .append
// .text() - get
// .text("whatever") - sets

function makeBaddies(baddies) {
  $("<ul></ul>").appendTo("article:contains('Mordor')");
  $.each( baddies, function(index, value){
    $("<li>"+value+"</li>").appendTo("ul:last").addClass("baddies");
  });
};

makeBaddies(baddies);

function makeBuddies(buddies) {
  $("<aside>").appendTo("body");
  $("<ul>").appendTo("aside");
  $.each( buddies, function(index, value){
    $("<li>"+value+"</li>").appendTo("aside:first")
  });
  $("li:contains('Gandalf')").css("background", "grey");
}

makeBuddies(buddies);


function leaveTheShire() {
  $("ul:first").insertAfter("h1:contains('Rivendell')");
}

leaveTheShire();

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $("li:contains('Strider')").text("Aragorn")
}

beautifulStranger();

function forgeTheFellowShip() {
  $("aside:first").insertAfter("h1:contains('Rivendell')");
  $("<div>").addClass("the-fellowship").appendTo("body");
  $("aside li").each( function(index, value){
    $("div.the-fellowship").append(value);
    alert("the fellowship!");
  });
  $(".hobbit").each( function(index, value){
    $("div.the-fellowship").append(value);
    alert("the fellowship!");
  });

  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}

// forgeTheFellowShip();

function theBalrog() {
  $("li:contains('Gandalf')").css("background", "white");
  $("li:contains('Gandalf')").css("border", "solid 1px grey");
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}

theBalrog();

function hornOfGondor() {
  $("li:contains('Boromir')").css("text-decoration", "line-through");
  $("li:contains('The Uruk-hai')").remove();
  $("<footer>").appendTo("body");
  $("li:contains('Boromir')").appendTo("footer");
  alert("The Horn of Gondor has been blown!");
};

hornOfGondor();

function itsDangerousToGoAlone(){
  $("li:contains('Frodo')").insertAfter("h1:contains('Mordor')");
  $("li:contains('Sam')").insertAfter("h1:contains('Mordor')");
  $("<div id = 'mount-doom'></div>").appendTo("h1:contains('Mordor')");
}

itsDangerousToGoAlone();

function weWantsIt() {
  $("<div id = 'gollum'></div>").appendTo("h1:contains('Mordor')");
  $("div#the-ring").appendTo("div#gollum");
  $("div#gollum").appendTo("div#mount-doom");
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}

weWantsIt();

function thereAndBackAgain() {
  $("div#gollum").remove();
  $("div#the-ring").remove();
  $(".baddies").remove();
  $(".hobbits").appendTo("article:contains('The Shire')");
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}

thereAndBackAgain();


