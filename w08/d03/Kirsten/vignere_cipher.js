
var codingArray =  ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];

var encode = function(message, keyword){
  keywordString = keywordLength(message, keyword);
  messageIndex = getIndex(message);
  wordIndex = getIndex(keywordString);
  codedMessage = new Array;
  for (var i=0; i < messageIndex.length; i++){
    var index = messageIndex[i]+wordIndex[i]
    if(index < 26)
      codedMessage.push(codingArray[index]);
    else
      codedMessage.push(codingArray[index-26]);
  }
  return codedMessage.join("");
};

var getIndex = function(word) {
  var wordArray = word.split("");
  var indexWord = new Array;
  for (var i=0; i < wordArray.length; i++){
    indexWord.push(codingArray.indexOf(wordArray[i])) 
  }
  return indexWord
};

var keywordLength = function(message, keyword) {
  var result = ""
  for(var i=0; i<message.length; i++) {
    var position = i % keyword.length;
    var messageLetters = keyword.split("");
    result += messageLetters[position];
  }
  return result;
};

var decrypt = function(message, keyword) {
  var keywordString = keywordLength(message, keyword);
  var keywordIndexArray = new Array;
  for (var i=0; i < message.length; i++){
    keywordIndexArray.push(codingArray.indexOf(keywordString[i]))
  };
  var messageIndexArray = new Array;
  for (var i=0; i < message.length; i++){
    messageIndexArray.push(codingArray.indexOf(message.split("")[i]))
  };
  var decodedMessage = new Array;
  for (var i=0; i < message.length; i++){
    if(messageIndexArray[i] >= keywordIndexArray[i])
      var index = (messageIndexArray[i]-keywordIndexArray[i])
    else
      var index = (messageIndexArray[i]+26)-keywordIndexArray[i];
    decodedMessage.push(codingArray[index])
  };
  return decodedMessage.join("");
}

