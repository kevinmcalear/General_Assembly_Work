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
    $( "<section id='middle-earth'></section>" ).appendTo( "body" );
    // add each land as an article tag
    for(var i = 0; i < lands.length; i++) {
    $("<article id="+lands[i].split(" ").join("")+"><h1>"+lands[i]+"</h1></article>").appendTo("section#middle-earth");
    };  
    // inside each article tag include an h1 with the name of the land      
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  $("<ul id='hobbits'></ul>").appendTo("article#TheShire");
  // give each hobbit a class of hobbit
  for(var x = 0; x < hobbits.length; x++){
    $("<li class='hobbit' id="+hobbits[x].split(" ")[0]+">"+hobbits[x]+"</li>").appendTo("ul#hobbits");
  };
}

makeHobbits(hobbits);


function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  $("<div id='the-ring'></div>").appendTo("li#Frodo")
  // add the ring as a child of Frodo
}

keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor

  $("<ul id='baddies'></ul>").appendTo("article#Mordor");
  for(var y = 0; y < baddies.length; y++){
    $("<li id="+baddies[y].split(" ").join("")+">"+baddies[y]+"</li>").appendTo("ul#baddies");
  };
  
}

makeBaddies(baddies);

function makeBuddies(buddies) {
  // create an aside tag

  $("<aside><ul id='buddies'></ul></aside>").appendTo("body");
  for(var z = 0; z < buddies.length; z++){
    $("<li class='buddy' id="+buddies[z].split(" ").join("")+">"+buddies[z]+"</li>").appendTo("ul#buddies");
  };
  $("li#GandalftheGrey").css("background", "gray");

  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background
}

makeBuddies(buddies);

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  $("ul#hobbits").appendTo("article#Rivendell");

}

leaveTheShire();

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $("li#Strider").text("Aragorn");

}

beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  $("ul#hobbits").appendTo("article#Rivendell");
  $("ul#buddies").appendTo("article#Rivendell");
  // create a new div called 'the-fellowship'
  $("<div id='the-fellowship'></div>").appendTo("article#Rivendell");
  // add each hobbit and buddy one at a time to 'the-fellowship'
  for(j = 0; j < hobbits.length; j++){
    $("li.hobbit").appendTo("div#the-fellowship");
    alert(hobbits[j]+" has joined the fellowship!")
  };

  for(m = 0; m < buddies.length; m++){
    $("li.buddy").appendTo("div#the-fellowship");
    alert(buddies[m]+" has joined the fellowship!");
  };
  // after each character is added make an alert that they have joined your party
}

forgeTheFellowShip();

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'

  $("li#GandalftheGrey").text("Gandalf the White");
  // apply style to the element
  $("li#GandalftheGrey").css("background", "white");
  $("li#GandalftheGrey").css("border", "5px solid grey");
  // $("li#GandalftheGrey").css("borderTopWidth", "5px");
  // $("li#GandalftheGrey").css("borderTopStyle", "solid");
  // $("li#GandalftheGrey").css("borderTopColor", "grey");
  // $("li#GandalftheGrey").css("borderBottomWidth", "5px");
  // $("li#GandalftheGrey").css("borderBottomStyle", "solid");
  // $("li#GandalftheGrey").css("borderBottomColor", "grey");
  // $("li#GandalftheGrey").css("borderRightWidth", "5px");
  // $("li#GandalftheGrey").css("borderRightStyle", "solid");
  // $("li#GandalftheGrey").css("borderRightColor", "grey");
  // $("li#GandalftheGrey").css("borderLeftWidth", "5px");
  // $("li#GandalftheGrey").css("borderLeftStyle", "solid");
  // $("li#GandalftheGrey").css("borderLeftColor", "grey");
  // make the background 'white', add a grey border
}

theBalrog();

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  alert("Horn of Gondor has been blown!");
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  $("li#Boromir").css("text-decoration", "line-through")
  // Remove the Uruk-Hai from the Baddies on the page
  $("li#TheUruk-hai").remove();
  // Remove Boromir from the Fellowship
  $("<footer></footer>").appendTo("body");
  $("li#Boromir").appendTo("footer");
  // Put Boromir in the Footer
}

hornOfGondor();

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  $("li#Frodo").appendTo("article#Mordor");
  $("li#Samwise").appendTo("article#Mordor");
  // add a div with an id of 'mount-doom' to Mordor
  $("<div id='mount-doom'></div>").appendTo("article#Mordor");
}

itsDangerousToGoAlone();

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  $("<div id='gollum'></div>").appendTo("article#Mordor");
  // Remove the ring from Frodo and give it to Gollum
  $("div#the-ring").appendTo("div#gollum");
  // Move Gollum into Mount Doom
  $("div#gollum").appendTo("div#mount-doom");
}

weWantsIt();

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  $("div#gollum").remove();
  $("div#the-ring").remove();
  // remove all the baddies from the document
  $("ul#baddies").remove();
  // Move all the hobbits back to the shire
  $("ul#hobbits").appendTo("article#TheShire");
  for(p = 0; p < hobbits.length; p++){
    $("li.hobbit").appendTo("article#TheShire");
  };
}

thereAndBackAgain();




