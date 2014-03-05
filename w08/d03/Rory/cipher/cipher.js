console.log("Loaded");


//make word an array//
var makeWordAnArray = function(word){
  return word.split("")
};

//find a letter's index in alphabet//
var letter_index = function(word){
  var letters = word.split("");
  var alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  var indices = "";
  for (var counter = 0; counter < letters.length; counter++ ) {
    indices+=(alphabet.indexOf(letters[counter])+",");
  }
  console.log("["+indices+"]");
};

/*var getOneLetterIndex = function(letter){
  var alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  return alphabet.indexOf(letter)
}

var getEachLetterIndexFromArray = function(word){
  for (var counter = 0; counter <= word.length; counter++) {
    var letter = word[counter]
    each_letter_index_array = []
    each_letter_index_array.push(getOneLetterIndex(letter))
    return each_letter_index_array
  };
};*/