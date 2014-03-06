var vigenereEncode = function(message, keyword, method) {
  // set the keyword to the appropriate length
  var array = alphabet();
  // get the alphabet as an array
  var fixedKeyword = keywordLength(message, keyword);

  // this if checks to see if you are encoding or decoding
  if(method === "encode"){
    return message.split("").map(function(element, index){
      // finds the index of the encoded letter
      var letterIndex = array.indexOf(element) + array.indexOf(fixedKeyword[index]);
      // ensures that the index is between 0 and 25
      if(letterIndex > 25){
        letterIndex -= 26;
      };
      // returns the encoded letter
      return array[letterIndex];
      // joins the array of encoded letters back together
    }).join("");
  } else if(method === "decode"){
    return message.split("").map(function(element, index){
      var letterIndex = array.indexOf(element) - array.indexOf(fixedKeyword[index]);
      if(letterIndex < 0){
        letterIndex += 26;
      };
      return array[letterIndex];
    }).join("");
  } else {
    return "the final argument must be encode or decode";
  };


};

//   for( var i = 0; i<message.length; i++){
//     var messageIndex = array.indexOf(message[i]);
//     var keywordIndex = array.indexOf(fixedKeyword[i]);

//     if(method === "encode"){
//       var letter = messageIndex + keywordIndex;  
//       if(letter > 25){
//         letter -= 26;
//       };
//     } else {
//       var letter = messageIndex - keywordIndex;
//       if(letter < 0){
//         letter += 26;
//       };
//     };

//     encrypt += array[letter];
//   };
//   return encrypt;


// };

var keywordLength = function(message, keyword) {
  var result = "";
  for(var i = 0; i<message.length; i++) {
    var position = i % keyword.length;
    var messageLetters = keyword.split("");
    result += messageLetters[position];
  };
  return result;
};

var alphabet = function(){
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  alphabet =alphabet.split("")
  return alphabet;
};

// var encode = function(letter, index){
//   var array = alphabet();
//   var fixedKeyword = keywordLength(message, keyword);
//   var messageIndex = array.indexOf(letter);
//   var keywordIndex = array.indexOf(fixedKeyword[index]);
//   var letter = messageIndex + keywordIndex;  
//       if(letter > 25){
//         letter -= 26;
//       };
//   return encrypt += alphabet[letter];
// };