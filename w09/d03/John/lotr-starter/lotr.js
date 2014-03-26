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
  $("<section>").appendTo( "body" ).attr("id", "middle-earth");

  // add each land as an article tag
  // inside each article tag include an h1 with the name of the land
  
  $.each(lands, function(index, land) {
    var h1 = $("<h1>").text(land);
    // h1.text = land;
    var article = $("<article>");
    article.attr("id", land.replace(/ /g, "-"));
    // $(article).appendTo("section");
    $("section").append(article);
    $(article).append(h1);
    // $("section").append("<article><h1>" + value);
  });
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  $('h1:contains("The Shire")').after("<ul>");
  // alert("The hobbits go to the Shire");
  $.each(hobbits, function(index, value){
    $("ul").append("<li>" + value).children().addClass("hobbit");
  });
}
makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  var ringDiv = $("<div>").attr("id", "the-ring");
  $('li:contains("Frodo")').append(ringDiv);
  // $('li:contains("Frodo")').append("<div>").children().attr("id", "the-ring");
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
  $(".hobbit").appendTo('article#Rivendell');
}

leaveTheShire();


function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $('li:contains("Strider")').text("Aragorn");
}

beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  $(".buddy").appendTo('article#Rivendell');

  // create a new div called 'the-fellowship'
  var fellowshipDiv = $("<div>").attr("id", "the-fellowship").text("The Fellowship");
  $('h1:contains("Rivendell")').append(fellowshipDiv);
  // $("aside").after('<div id="the-fellowship">The Fellowship</div>');
  
  // add each hobbit and buddy one at a time to 'the-fellowship'  
  $.each(hobbits, function(index, value) {
    $('li:contains(' + value + ')').appendTo("div#the-fellowship");
    alert(value + " was added to the party!");
  });

  $.each(buddies, function(index, value) {
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
  alert("The horn of Gondor has been blown.");

  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  $('li:contains("Boromir")').css("text-decoration", "line-through");
  alert("Boromir is gone.");
  // Remove the Uruk-Hai from the Baddies on the page
  $('li:contains("The Uruk-hai")').remove();

  // Remove Boromir from the Fellowship
  $('li:contains("Boromir")').remove();

  // Put Boromir in the Footer
  $("body").append("<footer>");
  $("footer").text("Boromir");
}

hornOfGondor();

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  $('li:contains("Frodo")').appendTo('h1:contains("Mordor") ul');
  $('li:contains("Sam")').appendTo('h1:contains("Mordor") ul');
  // add a div with an id of 'mount-doom' to Mordor
  var mountDoom = $("<div>").attr("id", "mount-doom");
  $('h1:contains("Mordor")').append(mountDoom);
}

itsDangerousToGoAlone();


function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  var gollum = $("<div>").attr("id", "gollum");
  $('h1:contains("Mordor")').append(gollum);

  // Remove the ring from Frodo and give it to Gollum
  $("div#the-ring").remove();
  var theRing = $("<div>").attr("id", "the-ring");
  $('div#gollum').append(theRing);

  // Move Gollum into Mount Doom
}

weWantsIt();


function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  $("div#gollum").remove();
  // remove all the baddies from the document
  $.each(baddies, function(index, value) {
    $('li:contains('+value+')').remove();
  });
  // Move all the hobbits back to the shire
  var shire = $('article#The-Shire');
  $.each(hobbits, function(index, value) {
    $('li:contains('+value+')').appendTo("article#The-Shire ul");
  });
}

thereAndBackAgain();






