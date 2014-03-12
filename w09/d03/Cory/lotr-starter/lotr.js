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









