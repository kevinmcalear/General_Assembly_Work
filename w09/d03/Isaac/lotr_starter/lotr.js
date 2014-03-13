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
  $("body").append("<section id='middle-earth'></section>")
  for(var i=0; i <lands.length; i++){
    $("#middle-earth").append("<article><h1>"+ lands[i] + "</h1></article>")
  };
}

makeMiddleEarth(lands);

// function makeHobbits(hobbits) {
//   // display an unordered list of hobbits in the shire
//   // give each hobbit a class of hobbit
//   $('body').append("<ul></ul>");
//   for(var i=0;i<hobbits.length;i++){
//     $('ul').append("<li class='hobbit'>"+hobbits[i]+"</li>")
//   };
// };

function makeHobbits(hobbits) {
  $.each(hobbits, function(index, hobbit){
    $("article:first-child").append("<li>"+ hobbit +"</li>").addClass("hobbit");
    });
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  $("ul:first-child").append("<div></div>").addClass("the-ring");
}

keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
}

function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
}

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
}

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
}

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}


