
// var message = prompt("Please enter the message you'd like to encode:");
// var keyword = prompt("Enter the keyword:");

var Cipher = function(message, keyword) {
  this.message = message.toLowerCase();
  this.keyword = keyword.toLowerCase();
};

Cipher.prototype.encode = function() {
  alpha = "abcdefghijklmnopqrstuvwxyz".split("");
  messageArray = this.message.split("");
  keywordArray = this.keyword.split("");
  var encryptedMessage = "";
  var k = 0;
  var j = 0;
  var repeatKey = "";

  while(j < this.message.length) {
    repeatKey += keywordArray[k];
    k++;  
    if (k > this.keyword.length-1){
      k = 0;
    };
    j++;
  };

  for(var i=0; i<this.message.length; i++) {
    messageNum = alpha.indexOf(messageArray[i]);
    keyNum = alpha.indexOf(repeatKey[i]);
    sum = messageNum + keyNum;
    if (sum > 25) {
      sum = sum - 26;
    }; 
    encryptedMessage += alpha[sum];
  };
  return encryptedMessage;
};

Cipher.prototype.decode = function() {
  console.log("Hello");
};

cipher1 = new Cipher("attackatdawn", "lemon");
console.log(cipher1.encode());

Cipher.prototype.decode = function() {
  alpha = "abcdefghijklmnopqrstuvwxyz".split("");
  messageArray = this.message.split("");
  keywordArray = this.keyword.split("");
  var encryptedMessage = "";
  var k = 0;
  var j = 0;
  var repeatKey = "";

  while(j < this.message.length) {
    repeatKey += keywordArray[k];
    k++;  
    if (k > this.keyword.length-1){
      k = 0;
    };
    j++;
  };

  for(var i=0; i<this.message.length; i++) {
    messageNum = alpha.indexOf(messageArray[i]);
    keyNum = alpha.indexOf(repeatKey[i]);
    sum = messageNum - keyNum;
    if (sum < 0) {
      sum = sum + 26;
    }; 
    encryptedMessage += alpha[sum];
  };
  return encryptedMessage;
};

cipher2 = new Cipher(cipher1.encode(), "lemon");
console.log(cipher2.decode());