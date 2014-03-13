var lands = ["Shire", "Rivendell", "Mordor"];
var hobbits = [
  "Frodo Baggins",
  "Samwise 'Sam' Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin 'Pippin' Took"
];
var baddies = [
  "Sauron",
  "Saruman", 
  "The Uruk-hai", 
  "Orcs"
];
var buddies = [
  "Gandalf the Grey",
  "Legolas",
  "Gimli",
  "Strider",
  "Boromir"
];


function makeMiddleEarth() {
  $("<section>", {"class": "middle-earth"}).appendTo("body")
  for (var i = 0; i < lands.length; i++) {
    $("<article>", {"id": lands[i].toLowerCase(), "text": lands[i]}).appendTo("section")
  }
}

makeMiddleEarth();

function makeHobbits() {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit

  $("#shire").append("<ul>")

  $.each(hobbits, function( index, value ) {
    $("ul").append($("<li>").addClass("hobbit").append(value))
  });
}


makeHobbits();

function keepItSecretKeepItSafe() {
  $("<div>").attr('id', 'the-ring').appendTo("li:contains('Frodo')");
}

keepItSecretKeepItSafe();

function makeBaddies() {
  // display an unordered list of baddies in Mordor
  $("#mordor").append("<ul>")

  $.each(baddies, function( index, value ) {
    $("article#mordor > ul").append($("<li>").addClass("baddies").append(value))
  });
}

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  $("<div>").attr('id', 'the-ring').appendTo("li:contains('Frodo')")
  // add the ring as a child of Frodo
}

keepItSecretKeepItSafe();

makeBaddies();

function makeBuddies() {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background

  $("<aside>").appendTo("body")

  $.each(buddies, function( index, value ) {
    $("aside").append($("<li>").addClass("buddies").append(value))
  });

  $("li:contains('Gandalf')").css("background-color", "grey")

  
}

makeBuddies();

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  $("<ul>").appendTo("#rivendell")
  $(".hobbit").appendTo("#rivendell > ul")
}

leaveTheShire();

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $("li:contains('Strider')").text("Aragon")
}

beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  $(".buddies").appendTo("#rivendell > ul")
  // create a new div called 'the-fellowship'
  $("<div>").addClass("the-fellowship").appendTo("body")
  $("<ul>").appendTo(".the-fellowship")
    // add each hobbit and buddy one at a time to 'the-fellowship'
    // after each character is added make an alert that they have joined your party
  $.each(hobbits, function(index, value) {
    $("div.the-fellowship > ul").append($("<li>").addClass(hobbits).append(value))
    // alert(value + "has joined your party")
  })
  $.each(buddies, function(index, value) {
    $("div.the-fellowship > ul").append($("<li>").addClass(buddies).append(value))
    // alert(value + "has joined your party")
  })
  $("#rivendell > ul").remove();
}

forgeTheFellowShip();

function theBalrog() {
  var css = {"background-color": "white", "border": "2px solid grey"}
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
  $("li:contains('Gandalf')").text("Gandalf the White").css(css)
}

theBalrog();


function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  alert("horn of gondor has been blown")
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
  $("<footer>").appendTo("body")
  $("li:contains('Boromir')").css("text-decoration", "line-through").appendTo("footer")
  // Remove the Uruk-Hai from the Baddies on the page
  $("li:contains('Uruk-hai')").remove();
};

hornOfGondor();


function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
  $(("li:contains('Frodo')")).appendTo("#mordor > ul")
  $(("li:contains('Sam')")).appendTo("#mordor > ul")
  $("<div>").attr('id', 'mount-doom').appendTo("#mordor")
}

itsDangerousToGoAlone();

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  $("<div>").attr('id', 'gollum').appendTo("#mordor")
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}








