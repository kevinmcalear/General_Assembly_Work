function cypher(word, codeWord) {
  this.word = word;
  this.codeWord = codeWord;

  var repeatCodeWord = new Array();

  for(var i = 0; i < word.length; i++) {
    repeatCodeWord[i] = codeWord[(i % codeWord.length)]
  }

  for (var j = 0; j < repeatCodeWord.length;j++) {

    var val = (repeatCodeWord[j].charCodeAt() -96) + (word[j].charCodeAt()-96);
        console.log(val);
    val = (val % 26) + 95;
    repeatCodeWord[j] = String.fromCharCode(val);

  }

  return repeatCodeWord.join("");

}