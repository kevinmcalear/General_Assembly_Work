var encrypt = function(message, keyword){
  // we want to take a keywrd and message, and return an encrypted message
  var longKeyword = [];
  var result = [];
  var keywordArray = keyword.split("");
  var messageArray = message.split("");
  var messageLength = message.length;
  var alph = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t", "u","v","w","x","y","z"];
  var i=0;
  // set up the longkeyword to match the message length
  while(longKeyword.length<messageLength){
    longKeyword.push(keywordArray[i])
    i++;
    if (i === keywordArray.length){
      i=0;
    };
  };
  // find the two indices and add them together to get the index
  for(var i=0;i<messageArray.length;i++){
    letter = messageArray[i];
    letteridx = alph.indexOf(letter);
    keyletter = longKeyword[i];
    keyidx = alph.indexOf(keyletter);
    index = letteridx + keyidx
    if(index>26){index-=26;};
    result.push(alph[index]);
  }
  return result.join("");
}


var decrypt = function(code, keyword){
  var longKeyword = [];
  var result = [];
  var keywordArray = keyword.split("")
  var codeArray = code.split("");
  var codeLength = code.length;
  var alph = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t", "u","v","w","x","y","z"];
  var i=0
  while(longKeyword.length<codeLength){
    longKeyword.push(keywordArray[i]);
    i++;
    if (i === keywordArray.length){
      i=0;
    };
  };
  for(var i=0;i<codeArray.length;i++){
    letter = codeArray[i];
    letteridx = alph.indexOf(letter);
    keyletter = longKeyword[i];
    keyidx = alph.indexOf(keyletter);
    index = letteridx - keyidx;
    if(index>26){index-=26;}
    else if (index<0){index+=26};
    result.push(alph[index]);
  }
  return result.join("")
}


