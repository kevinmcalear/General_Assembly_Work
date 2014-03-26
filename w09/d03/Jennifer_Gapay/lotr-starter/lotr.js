var lands = ["The Shire", "Rivendell", "Mordor"];
var hobbits = ["Frodo Baggins", "Samwise 'Sam' Gamgee", "Meriadoc \"Merry\" Brandybuck", "Peregrin 'Pippin' Took"];
var baddies = ["Uruk-hai", "Sauron", "Orcs", "Saruman"]
var buddies = ["Gandalf the Grey", "Legolas", "Gimli", "Strider", "Boromir"];

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
  var shire = $('article')[0];
  var hobbitUl = $( "<ul></ul>" );
  // .appendTo('article');
 for (var i = 0; i < hobbits.length; i++) {
    $( "<li class='hobbits'>" + hobbits[i] + "</li>" ).appendTo( hobbitUl )
  }
  $( hobbitUl ).appendTo( shire );
}
makeHobbits(hobbits);

//3
// create a div with an id of 'the-ring'
// add the ring as a child of Frodo
function keepItSecretKeepItSafe() {
  $( "<div id='the-ring'></div>" ).appendTo( "li:contains('Frodo Baggins')");
}
keepItSecretKeepItSafe();


//4
//display an unordered list of baddies in Mordor
function makeBaddies(baddies) {
  var mordor = $('article')[2];
  var baddiesUl = $( "<ul></ul>" );
  for (var i = 0; i < baddies.length; i++) {
    $( "<li class='baddies'>" + baddies[i] + "</li>" ).appendTo( baddiesUl )
  }
  $( baddiesUl ).appendTo( mordor );
}
makeBaddies(baddies);

//5
// create an aside tag
// display an unordered list of buddies in the aside
// Make the Gandalf text node have a grey background

function makeBuddies(buddies) {
  var asideTag = $("<aside>").appendTo( "section" );
  var buddiesUl = $( "<ul></ul>" );
  var shire = $('article')[0];
  for (var i = 0; i < buddies.length; i++) {
    $( "<li class='buddies'>" + buddies[i] + "</li>" ).appendTo( buddiesUl )
  }
  $( buddiesUl ).appendTo( asideTag );

$("li:contains('Gandalf the Grey')").css('background-color', 'grey');
}
makeBuddies(buddies);

//6
// assemble the hobbits and move them to Rivendell
function leaveTheShire() {
  var hobbitsClass = $(".hobbits");
  var hobbitsNewHome = $('article').eq(1);
  $(hobbitsClass).appendTo(hobbitsNewHome);
}

leaveTheShire();

//7
// change the buddy 'Strider' textnode to "Aragorn"
function beautifulStranger() {
  var buddies = $(".buddies");
  var strider = buddies[3];
  strider.textContent = "Aragorn";
}
beautifulStranger();

//8


//9
// change the 'Gandalf' textNode to 'Gandalf the White'
// apply style to the element
// make the background 'white', add a grey border
function theBalrog() {
 var hobbits = $(".hobbits");
 var gandalf = buddies[0];
 gandalf.textContent = "Gandalf the White";
}
theBalrog();