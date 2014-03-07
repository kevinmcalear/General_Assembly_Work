var cipher = "lxfopvefrnhr";
var keyword = "lemon";


function decode(cipher, keyword) {
  var wholeAlphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t", "u","v","w","x","y","z"];
  var originalCipher = cipher.split("");
  var originalKeyword = keyword.split("");
  var cipherIndexHolder = [];
  var keywordDecodeHolder = [];
  var decodedHolder = [];
  var i;

  for (i = 0; i < originalCipher.length; i++) {
    var decode = (wholeAlphabet.indexOf(originalCipher[i % originalCipher.length]));
    cipherIndexHolder.push(decode);
  };

  for (i = 0; i < cipherIndexHolder.length; i++) {
    keywordDecodeHolder.push(wholeAlphabet.indexOf(originalKeyword[i]) - cipherIndexHolder[i]);
  };
  
  for (i = 0; i < keywordDecodeHolder.length; i++) {
    decodedHolder.push(wholeAlphabet[ keywordDecodeHolder[i] % wholeAlphabet.length]);
  };

  console.log(decodedHolder);

  

  var cipherText = decodedHolder.join("");
  console.log(cipherText);
};