var lands = ["The Shire", "Rivendell", "Mordor"];


var hobbits = [
  "Frodo Baggins",
  "Samwise 'Sam' Gamgee",
  "Meriadoc \"Merry\" Brandybuck",
  "Peregrin 'Pippin' Took"
];

var baddies = [
  "Sauron",
  "Saruman", 
  "The Uruk-hai", 
  "Orcs"
];

var buddies = [
  "Gandalf the Grey",
  "Legolas",
  "Gimli",
  "Strider",
  "Boromir"
];

// var body = document.querySelector("body");

function makeMiddleEarth(lands) {
  // $("section").add().appendTo("body");
  $( "<section id='middle-earth'>" ).appendTo("body");

  for(var i = 0; i<lands.length; i++){
  $( "<article><h1>" + lands[i] + "</h1></article>" ).appendTo("#middle-earth");

  };

}

makeMiddleEarth(lands);


function makeHobbits(hobbits) {
  var shire = $("h1:contains('The Shire')");
  var ul = $("<ul id='all-hobbits'>").appendTo(shire);
  // $(hobbits).each(function(i, hobbits){
  //   $(ul).add("li").text(hobbits[i]);
  // });
  for(var i = 0; i < hobbits.length; i++){
    $("<li class='hobbit'>" + hobbits[i] + "</li>").appendTo(ul);
  }
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  var frodo = $("li:contains('Frodo Baggins')");
  var div = $("<div id='the-ring'>").appendTo(frodo);
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
}
keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  var mordor = $("h1:contains('Mordor')");
  var ulBaddies = $("<ul id='mordor'>").appendTo(mordor);
  for(var i = 0; i < baddies.length; i++){
    $("<li class='baddies'>" + baddies[i] + "</li>").appendTo(ulBaddies);
  }
  // display an unordered list of baddies in Mordor
}

makeBaddies(baddies);

function makeBuddies(buddies) {
  var aside = $("<aside>").appendTo("body");
  var ulBuddies = $("<ul id='buddies'>").appendTo(aside);
  for(var i = 0; i < buddies.length; i++){
    $("<li class='buddies'>" + buddies[i] + "</li>").appendTo(ulBuddies);
  }
  $("li:contains('Gandalf')").css("background", "gray");
  
  // create an aside tag
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
}
makeBuddies(buddies);

function leaveTheShire() {
  var rivendell = $("h1:contains('Rivendell')");
  var hobbitsDetach = $("ul#all-hobbits").detach();
  $(hobbitsDetach).appendTo(rivendell);
  // assemble the hobbits and move them to Rivendell
}

leaveTheShire();

function beautifulStranger() {
  $("li:contains('Strider')").text("Aragorn");
  // change the buddy 'Strider' textnode to "Aragorn"
}
beautifulStranger();

function forgeTheFellowShip() {
  var rivendell = $("h1:contains('Rivendell')");
  // var hobbitsDetach = $("#all-hobbits").detach();
  var buddiesDetach = $("#buddies").detach();
  $(buddiesDetach).appendTo(rivendell);

  var fellowship = $("<div id='fellowship'>").text("The Fellowship").appendTo(rivendell);

  var buddiesClass = $( ".buddies" );
  var hobbitsClass = $( ".hobbit" );

  $(buddiesClass).each(function(i, buddy){
    $(buddy).appendTo(fellowship);
    alert("Buddy Added!");
  });

  $(hobbitsClass).each(function(i, hobbit){
    $(hobbit).appendTo(fellowship);
    alert("Hobbit Added!");
  });
  // $("h1").each(function(i, h1){
  //   $(h1).text("yo yo");
  // })

  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}
forgeTheFellowShip();

function theBalrog() {
$("li:contains('Gandalf')").text("Gandalf The White").css("background", "white").css("border", "2px solid grey");
// $("li:contains('Gandalf')").css("background", "white");
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}
theBalrog();

function hornOfGondor() {
  $("<footer>").appendTo("body");
  alert("the horn of gondor has been blown, bitch");
  var Boromir = $("li:contains('Boromir')");
  Boromir.css("text-decoration", "line-through");
  $("li:contains('Uruk-hai')").remove();
  var moveBoromir = Boromir.detach();
  moveBoromir.appendTo("footer");
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove the Uruk-Hai from the Baddies on the page
  // Remove Boromir from the Fellowship
  // Put Boromir in the Footer
}
hornOfGondor();

function itsDangerousToGoAlone(){
  var mordor = $("h1:contains('Mordor')");
  var frodo = $("li:contains('Frodo Baggins')");
  var sam = $("li:contains('Samwise 'Sam' Gamgee')");
  $(sam).appendTo(mordor);
  $(frodo).appendTo(mordor);
  var mtDoom = $("<div id='mount-doom'>");
  $(mtDoom).appendTo(mordor);

  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}
itsDangerousToGoAlone();

function weWantsIt() {
  var mordor = $("h1:contains('Mordor')");
  var gollumDiv = $("<div id='gollum'>");
  var divRing = $("div#the-ring");
  $(gollumDiv).appendTo(mordor);
  divRing.detach();
  divRing.appendTo(gollumDiv);
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}
weWantsIt();

function thereAndBackAgain() {
  var shire = $("h1:contains('The Shire')");
  $("<div id='gollum'>").remove();
  $("li.baddies").remove();
  var hobbitsClass = $( ".hobbit" );
  hobbitsClass.detach();
  hobbitsClass.appendTo(shire);
  
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}
thereAndBackAgain();


