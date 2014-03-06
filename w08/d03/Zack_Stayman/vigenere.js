var vigenereEncode = function(message, keyword, method) {
  // set the keyword to the appropriate length
  var array = alphabet();

  // get the alphabet as an array
  var fixedKeyword = keywordLength();


  var encrypt = "";

  for( var i = 0; i<message.length; i++){
    var messageIndex = array.indexOf(message[i]);
    var keywordIndex = array.indexOf(fixedKeyword[i]);
    if(method === "encode"){
      var letter = messageIndex + keywordIndex;  
      if(letter > 25){
        letter -= 26;
      };
    } else {
      var letter = messageIndex - keywordIndex;
      if(letter < 0){
        letter += 26;
      };
    };
    
    encrypt += array[letter];
  };
  return encrypt;
};

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