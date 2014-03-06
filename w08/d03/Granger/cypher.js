function cypher(word, codeWord) {
  var repeatCodeWord = new Array();

  for(var i = 0; i < word.length; i++) {
    repeatCodeWord[i] = codeWord[(i % codeWord.length)]
  }

  for (var j = 0; j < repeatCodeWord.length;j++) {
    var val = (repeatCodeWord[j].charCodeAt() -96) + (word[j].charCodeAt()-96);
    val = (val % 26) + 95;
    repeatCodeWord[j] = String.fromCharCode(val);
  }

  return repeatCodeWord.join("");
}

function decrypt(word, codeWord) {
  var repeatCodeWord = new Array();

  for(var i = 0; i < word.length; i++) {
    repeatCodeWord[i] = codeWord[(i % codeWord.length)]
  }

  for (var j = 0; j < repeatCodeWord.length;j++) {
    var val = ( (word[j].charCodeAt()-96) - (repeatCodeWord[j].charCodeAt() -96));

    if ( val < 0 ) {
      val = val + 26;
    }

    repeatCodeWord[j] = String.fromCharCode((val+97));
  }

  return repeatCodeWord.join("");

}