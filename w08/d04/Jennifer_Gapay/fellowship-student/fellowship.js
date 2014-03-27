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

var lands = ["The Shire", "Rivendell", "Mordor"];

//1.  MAKE MIDDLE EARTH
    // create a section tag with an id of middle-earth
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    // append middle-earth to your document body
function makeMiddleEarth(lands) {
  var middleEarth = document.createElement("section");
  middleEarth.id = "middle-earth";
  for(var i = 0; i < lands.length; i ++) {
  var article = document.createElement("article");
  var h1Tag = document.createElement("h1");
  h1Tag.textContent = lands[i];
  articleTag.appendChild(h1Tag);
  middleEarth.appendChild(articleTag);
  }
  document.body.appendChild(middleEarth);
}
makeMiddleEarth(lands);

//2. MAKE HOBBITS
  // display an unordered list of hobbits in the shire
  // give each hobbit a class of hobbit

function makeHobbits(hobbits) {
// }
var shireHobbits = document.createElement("ul");
  for(var i = 0; i < hobbits.length; i ++) {
    var hobbit = document.createElement("li"); 
    hobbit.textContent = hobbits[i];
    hobbit.className = "hobbits";
    shireHobbits.appendChild(hobbit);
  }
  var shire = document.getElementsByTagName('article')[0];
  shire.appendChild(shireHobbits);
}
makeHobbits(hobbits);

//3. KEEP IT SECRET
// create a div with an id of 'the-ring'
// add the ring as a child of Frodo
function keepItSecretKeepItSafe() {
  var ring = document.createElement('div');
  ring.id = "the-ring";
  var frodo = document.getElementByClassName('hobbit')[0];
  frodo.appendChild(ring);
}
keepItSecretKeepItSafe();

//4. MAKE BUDDIES
// create an aside tag
// display an unordered list of buddies in the aside
// insert your aside before rivendell
function makeBuddies(buddies) {
  var asideTag = document.createElement('aside');
  var buddiesList = document.createElement('ul');
  for (var i = 0; i < buddies.length; i++) {
    var buddy = document.createElement('li');
    buddy.textContent = buddies[i];
    buddiesList.appendChild(buddy);
  }
  asideTag.appendChild(buddiesList);
  var rivendell = document.getElementsByTagName('article')[1];
  rivendell.parentNode.insertBefore(asideTag, rivendell);
}
makeBuddies(buddies);

//5. ARAGORN
// change the buddy 'Strider' textnode to "Aragorn"
function beautifulStranger() {
  var buddies = document.getElementsByTagName('aside')[0].getElementsByTagName('li');
  var strider = buddies[3];
  strider.textContent = "Aragorn";
}
beautifulStranger();

//6. FELLOWSHIP
// move the hobbits and the buddies to Rivendell
  // create a new div called 'the-fellowship'
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
function forgeTheFellowShip() {
  var theFellowship = document.createElement('div');
  theFellowship.id = 'the-fellowship';
  theFellowship.appendChild(document.createElement('ul'));
  var shireHobbits = document.getElementById('the-ring').parentNode.parentNode;
  var hobbitCount = hobbitList.childElementCount;
  for (var i = 0; i < hobbitCount; i++) {
    var hobbit = shireHobbits.childNodes[0];
    theFellowship.children[0].appendChild(hobbit);
    alert(hobbit.textContent + " has joined the party");   
  }
  var buddies = document.getElementsByTagName('aside')[0].children[0].children;
  var buddyCount = buddies.length;
  for (var j = 0; j < buddyCount; j++) {
    var buddy = buddies[0];
    theFellowship.children[0].appendChild(buddy);
    alert(buddy.textContent + " has joined the party");
  }
  var rivendell = document.getElementsByTagName('article')[1];
  rivendell.appendChild(theFellowship);
}
forgeTheFellowship();