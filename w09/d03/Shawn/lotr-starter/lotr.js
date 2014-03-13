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

var lands = ["Shire", "Rivendell", "Mordor"];

function makeMiddleEarth(lands) {
  $("<section id='middle-earth'></section>").appendTo("body");
  for(var i = 0; i < lands.length; i++) {
    $("<article id="+lands[i].split(" ").join()+"><h1>"+lands[i]+"</h1></article>").appendTo("section#middle-earth");
  }      
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
var lands = document.querySelectorAll("article");
  $("<ul class='hobbits'></ul>").appendTo(lands[0]);
  for(var i = 0; i < hobbits.length; i++) {
    $("<li class=hobbit id="+hobbits[i].split(" ")[0]+">"+hobbits[i]+"</li>").appendTo("ul");
  }
}
makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  $("<div id=the-ring></div>").appendTo("li#Frodo");
}

keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  var lands = document.querySelectorAll("article");
  $("<ul id=baddies></ul>").appendTo(lands[2]);
  for(var i = 0; i < baddies.length; i++) {
    $("<li id="+baddies[i].split(" ").join("")+">"+baddies[i]+"</li>").appendTo("ul#baddies");
  }
}
makeBaddies(baddies);

function makeBuddies(buddies) {
  // create an aside tag
  $("<aside><h1>"+"Buddies"+"</h1></aside").appendTo("body");
  $("<ul id=buddies></ul>").appendTo("aside");
  for(var i = 0; i < buddies.length; i++) {
    $("<li class=buddy id="+buddies[i].split(" ").join("")+">"+buddies[i]+"</li>").appendTo("ul#buddies");
  }
  $("li#GandalftheGrey").css("background","gray");
}
makeBuddies(buddies);

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  var lands = document.querySelectorAll("article");
  $("ul#hobbits").appendTo(lands[1]);
}
leaveTheShire();

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $("li#Strider").text("Aragorn");
}
beautifulStranger();

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  $("ul#buddies").appendTo("article#Rivendell");
  $("<div id=the-fellowship></div>").appendTo("article#Rivendell");
  for(var i = 0; i < hobbits.length; i++) {
    $("li.hobbit").appendTo("div#the-fellowship");
    // alert(hobbits[i] + " has been added to The FellowShip!")
  }

  for(var i = 0; i < buddies.length; i++) {
    $("li.buddy").appendTo("div#the-fellowship");
    // alert(buddies[i] + " has been added to The FellowShip!")
  }
}
forgeTheFellowShip();

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  $("li:contains('Gandalf')").text("Gandalf the White");
  // apply style to the element
  $("li#GandalftheGrey").css("background", "white")
  $("li#GandalftheGrey").css("border", "5px solid gray");
  // make the background 'white', add a grey border
}
theBalrog();

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  alert("Dude, someone blew Gondor's horn ...");
  alert("Boromir's been killed by the Uruk-hai!... ^--^");
  // put a linethrough on boromir's name
  $("li#Boromir").css("text-decoration", "line-through");
  // Remove the Uruk-Hai from the Baddies on the page
  $("li#TheUruk-hai").remove();
  // Remove Boromir from the Fellowship
  $("<footer></footer").appendTo("body");
  $("li#Boromir").appendTo("footer");
  // Put Boromir in the Footer
}
hornOfGondor();

function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  $("li#Frodo").appendTo("article#Mordor");
  $("li#Samwise").appendTo("article#Mordor");
  $("<div id=mount-doom></div>").appendTo("article#Mordor");
  // add a div with an id of 'mount-doom' to Mordor
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
  // remove all the baddies from the document
  $("ul#baddies").remove();
  // Move all the hobbits back to the shire
  for(var i = 0; i < hobbits.length; i++) {
    $("li.hobbit").appendTo("article#Shire");
  }

}
thereAndBackAgain();