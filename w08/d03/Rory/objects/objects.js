console.log("I am loaded!!!");

// monkey
// name
// speak -> return "Hello, my name is..."
// climb -> level + 1
// level -> 0

var speak = function() {
  var name = "Philipkee";
  return "Hello, my name is " + this.name;
}

var monkey = {
  name: "bob",
  speak: speak,
  level: 0,
  climb: function(){ 
    return ++this.level;
    //sugar for adding 1 and incrementing//
  }
};

var Monkey = function(name){
  this.name = name;

  this.hungry = true;

  this.speak = function(){
    return "Hello my name is " + this.name;
  };

  this.level = 0;

  this.climb = function(){
    return ++this.level;
  };
};

var shmonkee = new Monkey("Shmonkee");

var philonkee = new Monkey("Philonkee");

var peteronkee = new Monkey("Peteronkee");
