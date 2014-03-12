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


var shire = $('h1:contains("The Shire")');

function makeMiddleEarth(lands) {
  // create a section tag with an id of middle-earth
  $( "body" ).append( "<section id='middle-earth'>" );

  // add each land as an article tag
  for(var i = 0; i < lands.length; i++) {
  $( "section" ).append( "<article>" );
  }

  $( "article" ).append( "<h1>" );

  $( "h1" ).each(function( i, h1 ){
  $(h1).text(lands[i]);
  }); 

  // inside each article tag include an h1 with the name of the land      
};

makeMiddleEarth(lands);


function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit

  $( "h1" ).first().append( "<ul>" );

  for(var i = 0; i < hobbits.length; i++) {
  $( "ul" ).append( "<li>" );
  }

  $( "li" ).each(function( i, li ){
  $(li).text(hobbits[i]);
}); 

  $( "li" ).addClass( "hobbit" );

};

makeHobbits(hobbits);


function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo

  $( "li" ).first().append( "<div>" );
  $('div').attr('id', 'the-ring');
}

keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  $( "h1" ).last().append( "<ul>");

  for(var i = 0; i < baddies.length; i++) {
    $("ul").last().append( "<li class='mordor'>" );
  
  }

  $('h1').last().attr('id', 'mordor');

  $( ".mordor" ).each(function( i, li ){
  $(li).text(baddies[i]);
}); 
}

makeBaddies(baddies);


function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
$( "body" ).append( "<aside>" );
$( "aside" ).append( "<ul>" );

}

makeBuddies(buddies);






