
  // we want to take a keyword and message, and return an encrypted message
  function encrypt(keyword, message) {
    var encryptedMessage = "";
    return encryptedMessage;
  }

  // we want to repeat a word enough times that it is a certain length
  function repeatUntil(keyword, length) {
    //return a string that is length length
    var keywordFullLengthArray = new Array(length);

    var index = 0;
    while(index < length) {
      keywordFullLengthArray[index] = keyword[index];
      index = index + 1; 

      if (index > 4) {
        index = 0;
      } else {
        index = index + 1;
      }
    }
    

    var keywordFullLength = keywordFullLengthArray.join("");

    //return a string that is length *length*, but it is
    // the letters in keyword over and over

    return keywordFullLength;
  }