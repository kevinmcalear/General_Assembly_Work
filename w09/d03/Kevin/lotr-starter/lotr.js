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
    $("<article><h1>"+ lands[i] +"</h1></article>").appendTo("section").addClass(lands[i]);
    // $("<h1>" + lands[i] + "</h1>").appendTo("<article>").appendTo("section");
  };
};

makeMiddleEarth(lands);


function makeHobbits(hobbits) {
  $(".The Shire").find("h1").appendTo("<ul>");
  for(i = 0; i < hobbits.length; i++){
    $("ul").appendTo("<li>"+hobbits[i]+"</li>")

  };
};

makeHobbits(hobbits);