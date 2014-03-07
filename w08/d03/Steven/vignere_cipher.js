var encrypt = function(message, keyWord){
  var alph = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t", "u","v","w","x","y","z"];
  var encryptedKeyWord = [];
  var messageArray = message.split("");
  var keyWordArray = keyWord.split("");

//same for decoding 
//getting an array of the keyword repeated to match the number of letters in the message
  var i=0;
  while(encryptedKeyWord.length < messageArray.length){
    encryptedKeyWord.push(keyWordArray[i]);
    i++;
    if (i === keyWordArray.length){
      i=0;
    }
  }
// getting a list of index numbers to match against the alph array
  var encryptedNumbers = [];
  for(var i=0; i < messageArray.length; i++){
    var number = alph.indexOf(encryptedKeyWord[i]) + alph.indexOf(messageArray[i]);
    if (number > 26){
      number = number - 26;
    }
    encryptedNumbers.push(number);
  }

// console.log(encryptedNumbers);

// matching those index numbers against the alphabet to get an encrypted message
  var finalEncryptedMessage = [];
  for(var i = 0; i < encryptedNumbers.length; i++){
    var letter = alph[(encryptedNumbers[i])];
    finalEncryptedMessage.push(letter);
  }

// getting an array of numbers to match against the alph array to get the decrypted message
  var decryptedNumbers = [];
  for(var i=0; i < finalEncryptedMessage.length; i++){
    var deNumber = alph.indexOf(finalEncryptedMessage[i]) - alph.indexOf(encryptedKeyWord[i]);
    if (deNumber < 0){
      deNumber = deNumber + 26;
    }
    decryptedNumbers.push(deNumber);
  }

  //matching that array of numbers against the alphabet to decrypt

  var finalDecryptedMessage = [];

  for(var i = 0; i < decryptedNumbers.length; i++){
    var deLetter = alph[(decryptedNumbers[i])];
    finalDecryptedMessage.push(deLetter);
  }


  console.log(finalEncryptedMessage.join(""));
  console.log(finalDecryptedMessage.join(""));
};

