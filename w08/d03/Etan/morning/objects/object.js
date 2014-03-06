window.name = "CrayCray";

var speak = function() {
	return "Hello, my name is " + this.name;
}


var monkey = { 
	name: "apu", 
	speak: speak, 
	level: 0,
	climb: function () {
		return ++this.level;
	}
};




