console.log("I am loaded!!")


// close key value pairs in variables with commas

var monkey = {
  name: "Mr. Monkey",
  level: 0,
  speak: function() {
    return("Hello My Name is " + monkey.name);
  },
  climb: function() {
    return this.level += 1;
  }

};


// uppcase has no function effect- just for readability
// close key value pairs with semi colins for objects
// Monkey keeps creating new monkey objects with the attributes name, speak, climb

function Monkey(name) {
  this.name = name;
};

Monkey.prototype.speak = function() {
  return "Hello I'm " + this.name;
};

Monkey.prototype.level = 0;

Monkey.prototype.climb = function() {
  return this.level += 1; 
}

var shmonkee = new Monkey("shmonkee");

var peteronkee = new Monkey("peteronkee");



















