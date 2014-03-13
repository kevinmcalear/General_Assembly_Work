2

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

  $( "body" ).append("<section id='middle-earth'>");
  $.each(lands, function(i, land){
    $( "<article>" ).appendTo( "#middle-earth");
  });

  $("article").append("<h1>");

  $( "h1" ).each(function(i, h1){
    $(h1).text(lands[i]);
  });
}

makeMiddleEarth(lands);

function makeHobbits(hobbits) {
  $( "<ul>" ).addClass("hobbits").appendTo($("h1").first());
  $.each(hobbits, function(i, hobbit) {
    $( "<li>" ).text(hobbits[i]).appendTo( "ul");
  });
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe() {
  $("<div id='the-ring'>").appendTo($("li").first());
  // create a div with an id of 'the-ring'
  // add the ring as a child of Frodo
}

keepItSecretKeepItSafe();

function makeBaddies(baddies) {
  var ul = $( "<ul>" );
  ul.appendTo($("h1")[2]);
  $.each(baddies, function(i, baddie) {
    $( "<li>" ).text(baddies[i]).addClass("baddies").appendTo( ul );
  });
}

makeBaddies(baddies);

function makeBuddies(buddies) {
  var aside = $( "<aside>" );
  var ul = $("<ul>");
  ul.addClass("buddies");
  aside.appendTo($("h1").first());
  ul.appendTo( aside );
  $.each(buddies, function(i, buddy) {
    $( "<li>" ).text(buddy).appendTo( ul );
  });
  $( "li:contains(Gandalf)").css( "background-color", "grey");
}

makeBuddies(buddies);


function leaveTheShire() {
  $(".hobbits").appendTo( $("#middle-earth article h1")[1]);
}

leaveTheShire();

function beautifulStranger() {
  $( "li:contains(Strider)" ).text("Aragorn");
}

beautifulStranger();

function forgeTheFellowShip() {
  $(".hobbits").appendTo( $("#middle-earth article h1")[1]);
  fellowship = $("<div class='the-fellowship'>");
  title = $("<h1> The Fellowship </h1>");
  title.appendTo(fellowship);
  fellowship.appendTo("#middle-earth");
  fellowshipList = $("<ul>");
  fellowshipList.appendTo(title);

  $(".hobbits li").each( function(i, hobbit) {
    $(hobbit).appendTo( fellowshipList );
    alert(hobbits[i] + "has joined The Fellowship!");
  });

  $(".buddies li").each( function(i, buddy) {
    $(buddy).appendTo( fellowshipList );
    alert(buddies[i] + "has joined The Fellowship!");
  });
}

forgeTheFellowShip();

function theBalrog() {
  $( "li:contains(Gandalf)").css( "background-color", "white").css( "border-color", "grey").css( "border-width", "2px").css( "border-style", "solid").text("Gandalf the White");
}

theBalrog();

function hornOfGondor() {
  alert("The horn of Gondor has been blown!!");

  $( "li:contains(Boromir)").css( "text-decoration", "line-through").appendTo( $("<footer>").appendTo( $("body")) ) ;

  $( "li:contains(Uruk-hai)").remove();

}

hornOfGondor();

function itsDangerousToGoAlone(){
 $( "li:contains(Frodo)").appendTo("article:contains(Mordor) ul");
 $( "li:contains(Sam)").appendTo("article:contains(Mordor) ul");
  $("<div id='mount-doom'>").appendTo($("#middle-earth article")[2]);
}

itsDangerousToGoAlone();

function weWantsIt() {
  $("<div id='gollum'>").appendTo( $("#middle-earth article")[2]);
  $("#the-ring").appendTo($("#gollum"));
  $("#gollum").appendTo($("#mount-doom"));
}

weWantsIt();

function thereAndBackAgain() {
  $("div:contains(gollum)").remove();
  $("div:contains(ring)").remove();
  $(".baddies").remove();;
  $(".the-fellowship h1 ul li").each( function(i, fellow) {
    $(fellow).appendTo( $("#middle-earth article")[0] );
  });
   $( "li:contains(Sam)").appendTo("article:contains(Shire) ul");
  $( "li:contains(Frodo)").appendTo("article:contains(Shire) ul");
}

thereAndBackAgain();