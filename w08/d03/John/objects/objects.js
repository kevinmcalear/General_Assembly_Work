console.log("I am loaded");

var koala = {
  name: "Indifferent George",
  level: 0,
  speak: function() {
    return ("Hello, my name is " + this.name);
  },
  climb: function() {
    this.level++;
  }
};

var name = "Jorge";
var speak = function(adj, act) {
  return "Hello, my name is " + this.name + " and I am a " + adj + " monkey who enjoys " + act + ".";
};

var monkey = {
  name: "George",
  level: 0,
  speak: speak,
  climb: function() {
    this.level++;
  }
};

var Monkey = function(name) {
  this.name = name;
  this.hungry = true;
};

Monkey.prototype.speak = function() {
  return "Hellllo, this is " + name;
}

a = new Monkey("a");
b = new Monkey("b");
c = new Monkey("c");