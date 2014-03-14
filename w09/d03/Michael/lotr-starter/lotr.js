///Question 1:  How to refactor the 'Forge the Fellowship'
///Question 2:  How to place Boromir in the footer (Horn of Gondor)

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
    $("body").append("<section id='middle-earth'></section>");
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land 
    for (var i= 0; i<lands.length; i++){
      $("#middle-earth").append("<article>"+"<h1>"+lands[i]+"</h1>"+"</article>")
    }; 
}
makeMiddleEarth(lands);


function makeHobbits(hobbits) {
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit
  $("article:first-child").append("<ul>")


  $.each(hobbits, function(index,hobbit){
    $("ul").append($("<li>").addClass("hobbit").append(hobbit) );
  })
};
makeHobbits(hobbits)

function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
$("<div>").attr("id","the-ring").appendTo($("li:contains('Frodo')")) 


}

keepItSecretKeepItSafe()

function makeBaddies(baddies) {
  $("article:nth-child(3)").append($("<ul>") )
  // display an unordered list of baddies in Mordor
  $.each(baddies, function(index, baddy){
    $("article:nth-child(3) ul").append($("<li>").append(baddy) )
    })
}
makeBaddies(baddies)

function makeBuddies(buddies) {
  // create an aside tag
  // display an unordered list of buddies in the aside
  $("body").append($("<aside>").append("<ul>"))
  $.each(buddies, function(index,buddy){
    $("aside ul").append($("<li>").append(buddy))
  })
  // Make the Gandalf text node have a grey background
  $("li:contains('Gandalf')").addClass("gray")


}
makeBuddies(buddies)

function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
  $("ul li.hobbit")
  $("article h1:contains('Rivendell')").append("<ul>")
  $.each( $("ul li.hobbit"), function(index,hobbit){
    $("article h1:contains('Rivendell') ul").append(hobbit)
  })

}
leaveTheShire()

function beautifulStranger() {
  // change the buddy 'Strider' textnode to "Aragorn"
  $("li:contains('Strider')").text("Aragorn")
}
beautifulStranger()

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
  // take Frodo and Sam out of the fellowship and move them to Mordor
  $("li:contains('Frodo')").appendTo($("article:nth-child(3) ul" ))
  $("li:contains('Sam')").appendTo($("article:nth-child(3) ul" ))
  // add a div with an id of 'mount-doom' to Mordor
  $("article:nth-child(3)").append($("<div>").attr("id","mount-doom"))
}
itsDangerousToGoAlone()

function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  $("<div>").attr("id","gollum").appendTo($("article:nth-child(3)"))
  // Remove the ring from Frodo and give it to Gollum
  $("div#the-ring").appendTo("div#gollum")
  // Move Gollum into Mount Doom
  $("div#gollum").appendTo("div#mount-doom")
}
weWantsIt()

function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  $("div#the-ring").remove()
  $("div#gollum").remove()  
  // remove all the baddies from the document
  $("li:contains('Sauron')").remove()

  $.each(baddies, function(index,baddy){
    $("li:contains('"+baddy+"')").remove();

  });
  // Move all the hobbits back to the shire
  $.each(hobbits, function(index,hobbit){
    $("li:contains('"+hobbit+"')").appendTo($("article:first-child ul"))
  });

}
thereAndBackAgain()



