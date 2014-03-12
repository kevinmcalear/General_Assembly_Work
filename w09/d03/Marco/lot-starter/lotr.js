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
  var ul = $("<ul>").appendTo("h1:contains('The Shire')");

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

}
makeBaddies(baddies);









