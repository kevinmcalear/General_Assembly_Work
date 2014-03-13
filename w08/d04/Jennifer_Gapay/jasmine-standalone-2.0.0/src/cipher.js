function encrypt(message, number){

  var alphabet = "abcdefghijklmnopqrstuvwxyz".split("");
  message = removeSpaces(message);
  var messageArray = message.split("");
  var encryptedMessage = "";

  for (var i = 0; i < message.length; i++ ){
    var newIndex = alphabet.indexOf(messageArray[i]) + number;
    encryptedMessage += alphabet[newIndex % 26];
  } 

  return encryptedMessage;
}

function decrypt(encryptedMessage, number) {
  number = (26 - number);
  return encrypt(encryptedMessage,number)
}

function removeSpaces(phrase){
  var newPhrase = phrase.replace(/ /g,"");
  return newPhrase
}