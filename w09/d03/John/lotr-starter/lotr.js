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
  // create a section tag with an id of middle-earth
  // add each land as an article tag
  // inside each article tag include an h1 with the name of the land
  $("<section>").appendTo( "body" ).attr("id", "middle-earth");
  
  $.each(lands, function(index, value) {
    $("section").append("<article><h1>" + value);
  });
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  $('h1:contains("The Shire")').append("<ul>");
  $.each(hobbits, function(index, value){
    $("ul").append("<li>" + value).children().addClass("hobbit");
  });
}
makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  $('li:contains("Frodo")').append("<div>").children().attr("id", "the-ring");
}

keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  $('h1:contains("Mordor")').append("<ul>").children().attr("id", "mordor");
  $.each(baddies, function(index, value) {
    $("ul#mordor").append("<li>" + value);
  });
}

makeBaddies(baddies);

function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
  $("section#middle-earth").append("<aside>");
  $.each(buddies, function(index, value) {
    $("aside").append("<li>" + value).children().addClass("buddy");
  });

  $("li:contains('Gandalf')").css("background", "grey");
}

makeBuddies(buddies);

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  $(".hobbit").appendTo('h1:contains("Rivendell")');
}

leaveTheShire();


function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $('li:contains("Strider")').text("Aragorn");
}

beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  $(".buddy").appendTo('h1:contains("Rivendell")');

  // create a new div called 'the-fellowship'
  $("aside").after('<div id="the-fellowship">The Fellowship</div>');
  
  // add each hobbit and buddy one at a time to 'the-fellowship'  
  $.each(hobbits, function(index, value) {
    $('li:contains(' + value + ')').appendTo("div#the-fellowship");
    // alert(value + " was added to the party!");
  });
  // after each character is added make an alert that they have joined your party

}

forgeTheFellowShip();

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  $('li:contains("Gandalf")').text("Gandalf the White");
  // apply style to the element
  // make the background 'white', add a grey border
  $('li:contains("Gandalf")').css("background", "white");
  $('li:contains("Gandalf")').css("border", "1px solid grey");
}

theBalrog();

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}




















