function encrypt(message, number) {

  var alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
  var messageArray = message.split("");
  var encryptedMessage = "";

  for (i = 0; i < message.length; i++) {
    var newIndex = alphabet.indexOf(messageArray[i]) + number;
    encryptedMessage = alphabet[newIndex];
  }

  return encryptedMessage;  
}