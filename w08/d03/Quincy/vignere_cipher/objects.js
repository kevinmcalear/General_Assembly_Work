var Message = function (word, keyword) {
  this.word = word;
  this.keyword = keyword;
};

var encrypt = function () {
  var messageArr = Message.word.split('');
  var keywordArr = Message.keyword.split('');

  var alpha = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];

  for (i=0; i < messageArr.length; i++);
    j = 0;
    var alphaIndex = parseInt(
      alpha.indexOf(messageArr[i]) + alpha.indexOf(keywordArr[j])
    );
  var ciphertext = [];
  ciphertext.push(alpha[alphaIndex]);

  if (j === keywordArr.length - 1)
    { j = 0 }
  else
    { j++ }

};

