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


// #1

function makeMiddleEarth(lands) {
  $("<section id='middle-earth'>").appendTo("body");
  $.each(lands, function(i, land){
    var article = $("<article>");
    var h1 = $("<h1>").text(land);
    $(h1).appendTo(article);
    $(article).appendTo("section");
  });
};
makeMiddleEarth(lands);


// #2

function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  $("article:contains('The Shire')").append("<ul>");

  $.each(hobbits, function(i, hobbit){
    $("ul").append( $("<li class='hobbit'>").append(hobbit) );
  });
};
makeHobbits(hobbits);

// #3

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
  
  $("<div>").attr("id", "the-ring").appendTo( $("li.hobbit:first-child") );
};
keepItSecretKeepItSafe();

// #4

function makeBaddies(baddies) {
  // display an unordered list of baddies in Mordor
  $("article:contains('Mordor')").append("<ul>");

  $.each(baddies, function(i, baddy){
    $("article:contains('Mordor')").append( $("<li>").append(baddy) );
  });
};
makeBaddies(baddies);

// #5

function makeBuddies(buddies) {
  // create an aside tag
  $("body").append( $("<aside>").append("<ul>"));
  // display an unordered list of buddies in the aside
  // Make the Gandalf text node have a grey background

  $.each(buddies, function(i, buddy){
    $("aside ul").append( $("<li>").append(buddy) );
  });

  var gandalf = $("li:contains('Gandalf')");
  // gandalf.style.color = "gray";
};
makeBuddies(buddies);

// #6

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  // IS IT OK IF I KILL THEM ALL AND MAKE NEW ONES ALREADY THERE INSTEAD???
  $(".hobbit").remove();

  $("article:contains('Rivendell')").append("<ul>")
  $.each(hobbits, function(i, hobbit){
    $("article:contains('Rivendell')").append( $("<li class='hobbit'>").append(hobbit) );
  });
};
leaveTheShire();

// #7

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $("li:contains('Strider')").text("Aragorn");
}
beautifulStranger();

// #8

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
  
  $("aside ul").appendTo("article:contains('Rivendell')");

}

function forgeTheFellowShip() {
  // move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
  
  var hobbits = $("ul:has( li:contains('Frodo') )")
  var buddies = $("ul:has( li:contains('Gandalf') )")


  $("article h1:contains('Rivendell')").append(hobbits)  
  $("article h1:contains('Rivendell')").append(buddies)
  $("article h1:contains('Rivendell')").append($("<div>").attr("id","the-fellowship").append("<ul>"
    ) )

  var fellowship = $("div#the-fellowship ul")
  var hobbitChildren = $("ul:has( li:contains('Frodo') )").children()
  var buddiesChildren = $("ul:has( li:contains('Gandalf') )").children()

  $.each(hobbitChildren, function(index,hobbit){
    fellowship.append(hobbit)
    alert( $(hobbit).text() +" has joined the fellowship" )
  });

  $.each(buddiesChildren, function(index,buddy){
    fellowship.append(buddy)
    alert( $(buddy).text()+" has joined the fellowship" )
  });



}
forgeTheFellowShip()

function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  $("li:contains('Gandalf')").addClass("white")
  // apply style to the element
  // make the background 'white', add a grey border
}
theBalrog()

function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  alert("The horn of Gondor has been blown");
  // Boromir's been killed by the Uruk-hai!
  alert("Boromir's been killed by the Urak-hai")
  // put a linethrough on boromir's name
  $("li:contains('Boromir')").addClass("deceased")
  // Remove the Uruk-Hai from the Baddies on the page
  $("li:contains('Uruk')").remove()
  // Remove Boromir from the Fellowship
  $("li:contains('Boromir')").remove()
  // Put Boromir in the Footer

}
hornOfGondor()

function itsDangerousToGoAlone(){
  $("li:contains('Frodo')").appendTo($("article h1:contains('Mordor') ul" ))
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}
itsDangerousToGoAlone()
