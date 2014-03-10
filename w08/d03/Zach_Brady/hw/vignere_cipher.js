var theAlphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]; 

function encrypt(theMessage, theKey){
  var cipherArray = [];
  var theSecret = "";

  // get encryption cipher num difference
  for (i = 0; i < theMessage.length; i++){
    j = 0
    if ( j < theKey.length ) {
      // cipherArray.push(theAlphabet.indexOf(theMessage[i]) + theAlphabet.indexOf(theKey[j]));
      getCipherLetter(theMessage[i], theKey[j]);
      ++j;
    } else {
      j = 0;
      // cipherArray.push(theAlphabet.indexOf(theMessage[i]) + theAlphabet.indexOf(theKey[j]));
      getCipherLetter(theMessage[i], theKey[j]);
      ++j;
    }
  }

  // convert cipher num diff to letters
  for (i = 0; i < cipherArray.length; i++) {
    if (cipherArray[i] >= 26) {
      cipherArray[i] -= 26;
      theSecret += theAlphabet[cipherArray[i]];
    } else {
      theSecret += theAlphabet[cipherArray[i]];
    }
  }
  return theSecret;
}

encrypted = encrypt("paulisdead", "dishragsoup");

function decrypt(theSecret, theKey) {
  var theMessage = "";
  var cipherArray = [];
  for (i=0; i<theSecret.length; i++) {
    j = 0 
    if ( j < theKey.length ) {
      cipherArray.push(theAlphabet.indexOf(theSecret[i]) - theAlphabet.indexOf(theKey[j]));
      ++j;
    } else {
      j = 0;
      cipherArray.push(theAlphabet.indexOf(theSecret[i]) - theAlphabet.indexOf(theKey[j]));
      ++j;
    }
  }
  for (i = 0; i < cipherArray.length; i++) {
    if (cipherArray[i] < 0) {
      cipherArray[i] += 26;
      theMessage += theAlphabet[cipherArray[i]];
    } else {
      theMessage += theAlphabet[cipherArray[i]];
    }
  }
  return theMessage;
}

console.log(encrypted + " means " + decrypt(encrypted, "dishragsoup"));
