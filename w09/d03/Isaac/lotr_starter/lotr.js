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
  $("<div id='the-ring'></div>").appendTo("li:contains('Frodo')");
};

keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  $.each(baddies, function(index, baddy){
    $("<li class='baddies'>" + baddy + "</li>").appendTo("h1:contains('Mordor')");
  });
};
makeBaddies(baddies);

function makeBuddies(buddies){
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
  $("body").append("<aside></aside>")
  $.each(buddies, function(index, buddy){
    $("aside").append("<li>" + buddy + "</li>").addClass("buddies")
  });
  $("aside li:first-child").css({"background": "gray"})
}

makeBuddies(buddies);

  // assemble the hobbits and move them to Rivendell
function leaveTheShire(){
  $(".hobbit li").insertAfter("h1:contains('Rivendell')");
}

leaveTheShire();

  // change the buddy 'Strider' textnode to "Aragorn"
function beautifulStranger(){
  $("aside li:contains('Strider')").text("Aragorn")
}

beautifulStranger();

  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
function forgeTheFellowShip() {
  $(".buddies li").insertAfter("h1:contains('Rivendell')");
  $(".hobbit li").each(function(index, value){
    $(value).appendTo($("<div class='the-fellowship'></div>"))
    alert("Joined the fellowship");
  });
}

forgeTheFellowShip();


  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
function theBalrog() {
  $("article li:contains('Gandalf the Grey')").text("Gandalf the White").css({"background-color": "white", "border": "solid gray 1px"})
}

theBalrog();

  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
function hornOfGondor() {
  alert("The horn of gondor has been blown")
  $("article li:contains('Boromir')").css({"text-decoration":"line-through"})
  $("article li:contains('Uruk-hai')").remove();
  $("article li:contains('Boromir')").css({"position": "fixed", "bottom": "0"})
}

hornOfGondor();

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
  $("article li:contains('Frodo')").appendTo("article h1:contains('Mordor')");
  $("article li:contains('Sam')").appendTo("article h1:contains('Mordor')");
  $("article h1:contains('Mordor')").append("<div id='mount-doom'></div>");
}

itsDangerousToGoAlone();
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
function weWantsIt() {
  $("article h1:contains('Mordor')").append("<div id='gollum'></div>");
  $("<div id='the-ring'></div>").appendTo("li:contains('Gollum')");
  $("li:contains('Gollum')").appendTo("#mount-doom");
}

weWantsIt();
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
function thereAndBackAgain() {
  $("li:contains('Gollum')").remove()
  $("#the-ring").remove();
  $(".baddies").remove();
  $("article li").appendTo("article h1:contains('The Shire')");
}

thereAndBackAgain();


