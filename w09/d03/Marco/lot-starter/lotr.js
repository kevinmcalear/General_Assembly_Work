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
  $("<section>").appendTo("body").attr("id", 'middle-earth');

  // add each land as an article tag
  $.each(lands, function(i, land) {
    var article = $("<article>").appendTo("#middle-earth");
    // inside each article tag include an h1 with the name of the land
    $("<h1>").text(land).appendTo(article);
  });    
}
makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var ul = $("<ul>").appendTo("article:first-child");

  $.each(hobbits, function(i, hobbit) {
    // give each hobbit a class of hobbit
    $("<li>").addClass("hobbits").text(hobbit).appendTo(ul);
  });
}
makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  $("<div>").attr("id", "the-ring").appendTo("li:contains('Frodo Baggins')");
  
}
keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var ul = $("<ul>").appendTo("article:last-child");

  $.each(baddies, function(i, baddie) {
    // give each hobbit a class of hobbit
    $("<li>").addClass("baddies").text(baddie).appendTo(ul);
  });
}
makeBaddies(baddies);

function makeBuddies(buddies) {
  // create an aside tag
  var aside = $("<aside>").appendTo("body");
  var ul = $("<ul>").appendTo(aside);
  // display an unordered list of buddies in the aside
  $.each(buddies, function(i, buddy) {
    $("<li>").addClass("buddies").text(buddy).appendTo(ul);
  });
  // Make the Gandalf text node have a grey background
  $("li:contains('Gandalf the Grey')").css("backgroundColor", "grey");
}
makeBuddies(buddies);

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  $("li.hobbits").parent().appendTo("article:contains('Rivendell')");
}
leaveTheShire();

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $("li:contains('Strider')").text("Aragorn");
}
beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  $("li.buddies").parent().appendTo("article:contains('Rivendell')");

  // create a new div called 'the-fellowship'
  $("<div>").attr("id", "the-fellowship").appendTo("article:contains('Rivendell')");

  // add each hobbit and buddy one at a time to 'the-fellowship'
  var hobs = $("li.hobbits");
  $.each(hobs, function(i, hobbit) {
    var addsEm = $("#the-fellowship").append(hobbit);
    alert( $(this).text() + " has joined the Fellowship");
  });

  var buds = $("li.buddies");
  $.each(buds, function(i, buddy) {
    var addsEm = $("#the-fellowship").append(buddy);
    alert( $(this).text() + " has joined the Fellowship");
  });

  // after each character is added make an alert that they have joined your party
}
forgeTheFellowShip();

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
  $("li:contains('Gandalf the Grey')").css({"border": "1px solid grey", "background-color": "white"}).text("Gandalf the White");

}
theBalrog();

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  alert("The Horn of Gondor has been blown");

  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  $("li:contains('Boromir')").css("text-decoration", "line-through");

  // Remove the Uruk-Hai from the Baddies on the page
  $("li:contains('The Uruk-hai')").remove();

  // Remove Boromir from the Fellowship
  // $("li:contains('Boromir')").remove();
  // Put Boromir in the Footer
  var footer = $("<footer>").appendTo("body");
  $("li:contains('Boromir')").appendTo(footer);
}
hornOfGondor();

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
  $("<div>").attr("id", "mount-doom").appendTo("article:last-child");

  $("li:contains('Frodo Baggins')").appendTo('#mount-doom');
  $("li:contains('Samwise 'Sam' Gamgee')").appendTo('#mount-doom');
}
itsDangerousToGoAlone();

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  $('<div>').attr("id", "gollum").appendTo('article:last-child');

  // Remove the ring from Frodo and give it to Gollum
  $("#the-ring").appendTo("#gollum");

  // Move Gollum into Mount Doom
  $("#gollum").appendTo("#mount-doom");
}
weWantsIt();

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  $("#gollum").remove();

  // remove all the baddies from the document
  $(".baddies").parent().remove();

  // Move all the hobbits back to the shire
  $(".hobbits").appendTo("article:first-child");
}
thereAndBackAgain();
