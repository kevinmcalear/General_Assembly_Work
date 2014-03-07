console.log("I am loaded!!!!")

// monkey

var monkey = {
  name: "bob",
  level: 0
};

monkey.speak = function() {
  var yo = "sup dude";
  return "Hello, my name is " + this.name + "!";
};

monkey.climb = function() {
  return ++this.level;
};

function Monkey() {
  this.hungry = true
  console.log(this);
};