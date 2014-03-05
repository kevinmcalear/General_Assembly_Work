var messageToKeyword = function(message, keyword) {
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
  encoded_text = "";
  mess_keyword = messageToKeyword(message, keyword);
  alphabet = alphabet();
  // console.log(alphabet);
  // console.log(mess_keyword)
  for (i = 0; i < message.length; i++) {
    // console.log("#" + i);
    message_index = alphabet.indexOf(message.charAt(i));
    keyword_index = alphabet.indexOf(mess_keyword.charAt(i));
    // console.log(message_index);
    // console.log(keyword_index);
    encoded_text += alphabet[((message_index + keyword_index) % 26)];
    // console.log(encoded_text)
  }
  return encoded_text;
};