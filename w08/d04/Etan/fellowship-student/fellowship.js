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

function makeMiddleEarth(lands) {
	for(var i = 0; i < lands.length; i++) {
		var land = document.createElement("article");
		var landName = document.createElement("h1");
		landName.innerText = lands[i];
		landName.className = lands[i].toLowerCase().replace(/ /g,"-");
		land.appendChild(landName);

		var middleEarth = document.querySelector("#middle-earth");
		middleEarth.insertAdjacentElement("afterend", land);
	}
};

function makeHobbits(hobbits) {
	var hobbitList = document.createElement("ul")
	for(var i = 0; i < hobbits.length; i++) {
		var hobbitListItem = document.createElement("li")
		hobbitListItem.innerText = hobbits[i];
		hobbitListItem.className = "hobbit";
		hobbitList.appendChild(hobbitListItem);
	}
	
	var shire = document.querySelector(".the-shire");
	shire.insertAdjacentElement("afterend", hobbitList);
};

function keepItSecretKeepItSafe() {
	var ring = document.createElement("div");
	ring.id = "the-ring";

	var frodo = document.querySelectorAll(".hobbit")[0];
	frodo.insertAdjacentElement("afterend", ring);
}

function makeBuddies(buddies) {

	var aside = document.createElement("aside");
	var ul = document.createElement("ul");

	for(var i = 0; i < buddies.length; i++) {
		var buddy = document.createElement("li");
		buddy.innerText = buddies[i];
		ul.appendChild(buddy);
	};
	aside.appendChild(ul);
	var rivendell = document.querySelector(".rivendell");
	rivendell.insertAdjacentElement("beforeend", aside);
}	


function beautifulStranger() {

	var replaceStrider = document.querySelectorAll("li")[3];
	var striderText = replaceStrider.innerText;

	replaceStrider.innerText = striderText.replace("Strider", "Aragorn");
}

function forgeTheFellowShip() {
}