console.log("Loaded")

var speak = function(adverb, adjective) {
  return "Hello my name is " + this.name;
};

var climb = function() {
  return this.level += 1;
};

var Monkey = function(name) {
  this.name = name;
  this.hungry = true;
  this.speak = function(){
    return "Hell my name is " + this.name + "and I am hungry" + hungry;
  };
  this.level = 0;
  this.climb = function(){
    return ++this.level;
  };
};


