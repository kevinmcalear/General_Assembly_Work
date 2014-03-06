console.log("I am loaded!!");

var monkey = {
  name: "Tom",
  speak: function() {
    return "Hello, my name is " + this.name + "!";
  },
  level: 0,
  climb: function() {
    if (this.level < 10) {
      return ++this.level;
    } else {
      this.level = 0;
      return "Too high, monkey!! Come down!"
    }
  }
};

function Monkey(name) { 
  this.name = name;

  this.hungry = true;

  this.speak = function(){
    return "Hello, my name is " + this.name;
  };

  this.level = 0;

  this.climb = function() {
    return ++this.level;
  };
};