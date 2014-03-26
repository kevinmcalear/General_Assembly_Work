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

  $( "<section>" ).appendTo( "body" );
  for(i=0; i< lands.length; i++) {
    var test = lands[i]
    var newTest = test.replace(" ","-")
    $("<article><h1>"+ lands[i] +"</h1></article>").appendTo("section").addClass(newTest);
    // $("<h1>" + lands[i] + "</h1>").appendTo("<article>").appendTo("section");
  };
};

makeMiddleEarth(lands);


function makeHobbits(hobbits) {
  $.each(hobbits, function(index, hobbit){
    $("article:first-child").append("<li>"+ hobbit +"</li>").addClass("hobbit")
    });
}

makeHobbits(hobbits);

function keepItSecretKeepItSafe(){
  $("<div id='the-ring'></div>").appendTo("li:contains('Frodo')")
}

keepItSecretKeepItSafe();

function makeBaddies(baddies){
  $.each(baddies, function(index, baddy){
    $("<li>" + baddy + "</li>").appendTo("h1:contains('Mordor')").addClass("baddies")
  });
}

makeBaddies(baddies);

function makeBuddies(buddies){
  $("body").append("<aside></aside>")
  $.each(buddies, function(index, buddy){
    $("aside").append("<li>" + buddy + "</li>").addClass("buddies")
  });
  $("aside li:first-child").css({"background-color": "gray"})
}

makeBuddies(buddies);

function leaveTheShire(){
  $(".hobbit li").insertAfter("h1:contains('Rivendell')");
}

leaveTheShire();

function beautifulStranger(){
  $("aside li:contains('Strider')").text("Aragorn")
}

beautifulStranger();

function forgeTheFellowShip() {
  $(".buddies li").insertAfter("h1:contains('Rivendell')");
  $(".hobbit li").each(function(index, value){
    $(value).appendTo($("<div class='the-fellowship'></div>"))
    alert("Joined the fellowship");
  });
}

forgeTheFellowShip();

function theBalrog() {
  $("article li:contains('Gandalf the Grey')").text("Gandalf the White").css({"background-color": "white", "border": "solid grey 4px"})
}

theBalrog();

function hornOfGondor() {
  alert("The horn of gondor has been blown")
  $("article li:contains('Boromir')").css({"text-decoration":"line-through"})
  $("article li:contains('Uruk-hai')").remove();
  $("article li:contains('Boromir')").css({"position": "fixed", "bottom": "0"})
}

hornOfGondor();

function itsDangerousToGoAlone(){
  $("article li:contains('Frodo')").appendTo("article h1:contains('Mordor')");
  $("article li:contains('Sam')").appendTo("article h1:contains('Mordor')");
  $("article h1:contains('Mordor')").append("<div id='mount-doom'></div>");
}

itsDangerousToGoAlone();

function weWantsIt() {
  $("article h1:contains('Mordor')").append("<div id='gollum'></div>");
  $("<div id='the-ring'></div>").appendTo("li:contains('Gollum')");
  $("li:contains('Gollum')").appendTo("#mount-doom");
}

weWantsIt();

function thereAndBackAgain() {
  $("li:contains('Gollum')").remove()
  $("#the-ring").remove();
  $(".baddies").remove();
  $("article li").appendTo("article h1:contains('The Shire')");
}

thereAndBackAgain();


