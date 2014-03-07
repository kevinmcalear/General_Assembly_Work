// console.log("loaded");
// # Vigenere Cipher

// Implement a Vigenere Cipher using JavaScript.

function Cipher(message, keyword) {
  this.alphabet = ("abcdefghijklmnopqrstuvwxyz").split("");
  this.message = message
  this.keyword = keyword
  this.echo = "";
  this.cipherText = ""
};

Cipher.prototype.createEcho = function() {
  var i = 0; 
  var difference = this.message.length - this.keyword.length;
  while(i != difference) {
    this.echo = this.keyword += this.keyword[i];
    i++;
  }
  return this.echo;
};

Cipher.prototype.createCipher = function() {
  var i = 0;
  
  while(i < this.message.length) { 

    var sum = this.alphabet.indexOf(this.message[i]) + this.alphabet.indexOf(this.keyword[i]);;

    if(sum > 25) { 
      this.cipherText += (this.alphabet[sum - 26])
    } else {
      this.cipherText += (this.alphabet[sum]);
    };
    i++;
  } 
  return this.cipherText
}

cipher = new Cipher("attackatdawn", "lemon");
