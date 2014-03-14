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
  var sec = $("<section id='middle-earth'></section>");

    // add each land as an article tag
  for(var i = 0; i < lands.length; i++) {
    var land = $("<article></arcticle>");
    land.text(lands[i]);
    land.appendTo(sec);
  }

    // inside each article tag include an h1 with the name of the land 
    sec.appendTo( "body");     
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  var ul = $( "<ul></ul>" );
  // give each hobbit a class of hobbit
  for(var i = 0; i < hobbits.length; i++) {
    var li = $( "<li></li>").text(hobbits[i]).addClass("hobbit").appendTo(ul);
  }

  ul.appendTo("body");
}

makeHobbits(hobbits);


function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  var hobs = $( "li" );
  var frodo = hobs.filter(function( index ) { return this.innerText === "Frodo Baggins"});
  var div = $( "<div id='the-ring'></div>" ).appendTo(frodo);

  // add the ring as a child of Frodo
}

function frodoFinder() {
  this.text() === "Frodo Baggins";
}

keepItSecretKeepItSafe();


function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var ul = $("<ul></ul>");
  for(var i = 0; i < baddies.length; i++) {
    var li = $( "<li></li>").text(baddies[i]).appendTo(ul);
  }

  ul.appendTo("body");
}

makeBaddies(baddies);

function makeBuddies(buddies) {
  // create an aside tag
  var aside = $("<aside></aside>");
  var ul = $("<ul></ul>");
  // display an unordered list of buddies in the aside
  for(var i = 0; i < buddies.length; i++) {
    var li = $( "<li></li>").text(buddies[i]).appendTo(ul);
  }
  ul.appendTo(aside);
  aside.appendTo("body");

  // Make the Gandalf text node have a grey background
  $("aside li:first-child").css({"background-color": "gray"});

}

makeBuddies(buddies);


function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  $(".hobbit").insertAfter("article:contains('Rivendell')");

}

leaveTheShire();


// function beautifulStranger() {
//   // change the buddy 'Strider' textnode to "Aragorn"
//   $("")
// }









