// Get imputed message from user to cipher

// var message = prompt("Please Enter A Message");
var message = "attackatdawn";

// Get keyword from user
// Make sure keyword does not have repeating letters

// var keyword = prompt("Please Enter Keyword With No Repeating Letters");
var keyword = "lemon";

function encode(message, keyword) {
  var wholeAlphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t", "u","v","w","x","y","z"];
  var originalMessage = message.split("");
  var originalKeyword = keyword.split("");
  var keywordRewriteHolder = [];
  var addedIndexesHolder = [];
  var cipherHolder = [];
  var i;
  
  for (i = 0; i < message.length; i++) {
    keywordRewriteHolder.push(originalKeyword[i%keyword.length]);
  };

  for (i = 0; i < keywordRewriteHolder.length; i++) {
    addedIndexesHolder.push(wholeAlphabet.indexOf(originalMessage[i]) + wholeAlphabet.indexOf(keywordRewriteHolder[i]));
  };

  for (i = 0; i < addedIndexesHolder.length; i++) {
    var cipher = (wholeAlphabet[ addedIndexesHolder[i] % wholeAlphabet.length ]);
    cipherHolder.push(cipher);
  };

  console.log(keywordRewriteHolder);
  console.log(addedIndexesHolder);
  console.log(cipherHolder);

  var cipherText = cipherHolder.join("");
  console.log(cipherText);
};


// find the index of each letter in message
// find the index of each letter in keyword
// map keyword to length of message
// add indexes of message letter and keyword letter 
// assign new cipher letter according to added indexes