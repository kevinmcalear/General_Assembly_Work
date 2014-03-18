console.log("Loaded");

//find each letter's index in alphabet and get an array back//
var letterIndex = function(word){
  var letters = word.split("");
  var alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  var indices = [];
  for ( var counter = 0; counter < letters.length; counter++ ) {
    indices.push(alphabet.indexOf(letters[counter]));
  }
  return indices;
};

var changeMessageToKeyword = function(message, keyword){
  var keyword_letters = [];
  for ( var counter = 0; counter < message.length; counter++ ) {
    // message_length < keyword.length//
      keyword_letters.push(keyword[counter]);
    /*else 
      while message_length > keyword_length
        keyword += keyword*/

  }
  console.log(keyword_letters.join(""));
};

var cipherIndex = function(message, keyword){
  var alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
  var cipher_index_array = [];
  var message_indices = letterIndex(message);
  var keyword_indices = letterIndex(keyword);
  for ( var counter = 0; counter < message.length; counter++ ) {
  cipher_index_array.push(message_indices[counter]+keyword_indices[counter])
  }
  //console.log(cipher_index_array)//
  var cipher_text_array = [];
  for ( var counter = 0; counter < cipher_index_array.length; counter++ ) {
    if (cipher_index_array[counter] > 26)
      cipher_text_array.push(alphabet[(cipher_index_array[counter] - 26)])
    else
      cipher_text_array.push(alphabet[cipher_index_array[counter]]);
  };
  console.log(cipher_text_array.join(""));
};