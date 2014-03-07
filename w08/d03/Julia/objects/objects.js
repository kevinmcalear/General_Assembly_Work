console.log("I am loaded!!");

//monkey
//name
//speak
//speak --> "Hello, my name is"
//climb => level + 1.2
//level => 0

/*
These are all the same!
var monkey = {
	name: "Bobo",
	"name": "Bobo"
};

monkey.name = "Bobo";
monkey["name"] = "Bobo";

*/

var speak = function() {
	return "Hello, my name is " + this.name;
};


// var monkey = {
// 	name: "Bobo",
// 	 This is an option: 
// 	speak: function() {
// 		return "Hello, my name is " + this.name
// 	}
// 	speak: speak,
// 	level: 0,
// 	climb: function() {
// 		this.level +=1;
// 		return this.level
// 	}
// };

var Monkey = function(name) {
	this.name = name;

	this.hungry = true;
	// this.speak = function() {
	// 	return "Hello, my name is " + this.name;
	// };
	// this.level = 0;

	// this.climb = function() {
	// 	return ++this.level;
	// };
};

Monkey.prototype.speak = function() {
	return "Hello I'm " + this.name;
}

Monkey.prototype.level = 0;

Monkey.prototype.climb = function() {
	return this.level = this.level + 1; 
}



var shmonkee = new Monkey("Shmonkee");

var philonkee = new Monkey("Philonkee");

var peteronkee = new Monkey("Peteronkee");