console.log("I am loaded")



var speak = function(adverb, activity){
  return "Hello my name is " + this.name + ", and I am " + adverb + " who is " + activity; 
};

var climb = function(){
  return ++this.level;
};

var monkey = {
  name: "Ceaser",
  speak: speak,
  climb: climb,
  level: 0
};

var monkey2 = {
  name: "Phil",
  speak: speak,
  climb: climb,
  level: 0
};