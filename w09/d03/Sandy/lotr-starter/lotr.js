var lands = ["The Shire", "Rivendell", "Mordor"];

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

//1
function makeMiddleEarth(lands) {
    // create a section tag with an id of middle-earth
  $( "<section id='middle earth'></section>" ).appendTo( "body" );
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land      
  for (var i = 0; i < lands.length; i++) {
    $( "<article><h1>" + lands[i] + "</h1></article>" ).appendTo( "section" );
  };
}

makeMiddleEarth(lands);

//2
function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  var shire = $('article').eq(0);
  var hobbitUl = $( "<ul></ul>" );

  for (var i = 0; i < hobbits.length; i++) {
  $( "<li class='hobbits'>" + hobbits[i] + "</li>" ).appendTo( hobbitUl );
  }
  $( hobbitUl ).appendTo( shire );
}

makeHobbits(hobbits);

//3
function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  $( "<div id='the-ring'></div>" ).appendTo( "li:contains('Frodo Baggins')");
}

keepItSecretKeepItSafe();

//4
function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var mordor = $('article').eq(2);
  var baddiesUl = $("<ul></ul>");

  for (var i = 0; i < hobbits.length; i++) {
  $( "<li >" + baddies[i] + "</li>" ).appendTo( baddiesUl );
  }
  $( baddiesUl ).appendTo( mordor );
}

makeBaddies(baddies);

//5
function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background

  var asideTag = $('<aside>').appendTo('section');
  var buddiesUl = $("<ul></ul>");

  for (var i = 0; i < buddies.length; i++) {
    $( "<li >" + buddies[i] + "</li>" ).appendTo( buddiesUl );
  }
  $( buddiesUl ).appendTo( asideTag );
  
  $("li:contains('Gandalf the Grey')").css('background-color', 'grey');
}

makeBuddies(buddies);

//6
function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var hobbitsClass = $(".hobbits");
  var hobbitsNewHome = $('article').eq(1);
  $(hobbitsClass).appendTo(hobbitsNewHome);
}

leaveTheShire();

//7
function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  var buddies = $(".buddies");
  var strider = buddies[3];
  strider.textContent = "Aragorn";
}
beautifulStranger();










