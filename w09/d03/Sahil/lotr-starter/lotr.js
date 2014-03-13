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

// 1
var lands = ["The Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands) {
    // create a section tag with an id of middle-earth
  $("<div id=middle-earth>").appendTo("body");
    
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land      
  $.each(lands, function(index,land){
    h1 = $("<h1>").text(land).appendTo("body");
    $(h1).wrap("<article>")
  });

}

makeMiddleEarth(lands);



// 2
function makeHobbits(hobbits) {
    // display an unordered list of hobbits in the shire
  shire = $("article:contains('The Shire')")

  $.each(hobbits, function(index,hobbit){
    $("<ul>").text(hobbit).appendTo(shire)
  });
    // give each hobbit a class of hobbit
  $("ul").wrapInner("<div class='hobbit'></div>")
}

makeHobbits(hobbits);

// 3
function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  ring = $("<div id='the-ring'></div>");
  // add the ring as a child of Frodo
  frodo = $("div:contains('Frodo')");
  $(ring).appendTo(frodo);
}
keepItSecretKeepItSafe();

// 4
function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  Mordor = $("article:contains('Mordor')")

  $.each(baddies, function(index,baddy){
    $("<ul>").text(baddy).appendTo(Mordor)
  });

}
makeBaddies(baddies);

// 5
function makeBuddies(buddies) {
  Rivendell = $("article:contains('Rivendell')")
  // create an aside tag
  aside = $("<aside>").appendTo(Rivendell);
  // display an unordered list of buddies in the aside
  $.each(buddies, function(index,buddy){
    $("<ul>").text(buddy).appendTo(aside); //why cant I appendTo("aside")?
  });
  // Make the Gandalf text node have a grey background
  Gandalf = $("ul:contains('Gandalf')")
  Gandalf.css("backgroundColor","gray")
}
makeBuddies(buddies);