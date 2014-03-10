var encodeKeyword = function(message, keyword) {
  var encrypted = "";
  for (i=0; i < message.length; i++) {
    var messChar = i % keyword.length;
    var keywordChars = keyword.split("");
    encrypted += keywordChars[messChar];
  }
  return encrypted;
};

// encodeKeyword uses a vignere cipher to encode a message using 
//  a keyword
// function encodeKeyword(message, keyword) {
//   return message.split("").map(function(value, index) {
//       return keyword.split("")[index % keyword.length];
//   }).join("");
// }

var encode = function(message, keyword) {
  var encodedText = "";
  var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  var messKeyword = encodeKeyword(message, keyword);
  for (i = 0; i < message.length; i++) {
    var messageCharIndex = alphabet.indexOf(message[i]);
    var keywordCharIndex = alphabet.indexOf(messKeyword[i]);
    encodedText += alphabet[((messageCharIndex + keywordCharIndex) % 26)];
  }
  return encodedText;
};

var decode = function(text, keyword) {
  var decodedText = "";
  var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  var messKeyword = encodeKeyword(text, keyword);

  for (i = 0; i < text.length; i++ ) {
    var textIndex = alphabet.indexOf(text[i]);
    var keywordCharIndex = alphabet.indexOf(messKeyword[i]);
    var messageCharIndex = textIndex - keywordCharIndex;

    if (messageCharIndex < 0) {
      messageCharIndex += 26;
    }
    decodedText += alphabet[messageCharIndex];
  }
  return decodedText;
};

var encode2 = function(message, keyword) {

};
