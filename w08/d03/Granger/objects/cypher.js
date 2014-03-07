function cypher(word, codeWord) {
  this.word = word;
  this.codeWord = codeWord;

  var length = word.length;
  var repeatCodeWord;

  for(var i = 0; i < length; i++) {
    repeatCodeWord[i] = codeWord[(i % length)]
  }

  return repeatCodeWord;

}