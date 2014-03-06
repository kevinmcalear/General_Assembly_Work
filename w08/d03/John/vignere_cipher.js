var encodeKeyword = function(message, keyword) {
  var encrypted = "";
  for (i=0; i < message.length; i++) {
    var messChar = i % keyword.length;
    var keywordChars = keyword.split("");
    encrypted += keywordChars[messChar];
  }
  return encrypted;
};

var alphabet = function() {
  alphabet = "abcdefghijklmnopqrstuvwxyz";
  return alphabet.split("");
};

var encode = function(message, keyword) {
  encodedText = "";
  mess_keyword = encodeKeyword(message, keyword);
  alphabet = alphabet();
  for (i = 0; i < message.length; i++) {
    message_index = alphabet.indexOf(message.charAt(i));
    keywordIndex = alphabet.indexOf(mess_keyword.charAt(i));
    encodedText += alphabet[((message_index + keywordIndex) % 26)];
  }
  return encodedText;
};

var decode = function(text, keyword) {
  decodedMessage = "";
  alphabet = alphabet();
  mess_keyword = encodeKeyword(text, keyword);

  for (i = 0; i < text.length; i++ ) {
    textIndex = alphabet.indexOf(text.charAt(i));
    keywordIndex = alphabet.indexOf(mess_keyword.charAt(i));
    messageIndex = textIndex - keywordIndex;

    if (messageIndex < 0) {
      messageIndex += 26;
    }

    decodedMessage += alphabet[messageIndex];
  }
  return decodedMessage;
};