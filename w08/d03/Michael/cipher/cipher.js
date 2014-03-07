console.log("Let's make ciphers")

var message = ""
var keyword = ""

var alph = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];


var messageToCiph = function(message){
  for (var i= 0; i<message.length; i++){
    this.ciphMessageArray.push( alph.indexOf( message[i] ) ) 
  };
}


function Cipher(message,keyword) {
  this.message = message; 
  this.keyword = keyword; 
  this.ciphText = [];
  this.ciphMessageArray = [];
  this.ciphKeywordArray = [];
  this.ciphTextArray = [];

  this.messageToCiph = messageToCiph

  this.messageToCiph(this.message)

  // Step 1: Create Array of Message Index
  // for (var i= 0; i<message.length; i++){
  //   this.ciphMessageArray.push( alph.indexOf( message[i] ) ) 
  // };
  
  // Step 2: Create Array of Keyword Index
  for (var i= 0; i<message.length; i++){
    this.ciphKeywordArray.push( alph.indexOf( keyword[(i % keyword.length)] ) ) 
  };

  // Step 3: Create Array of Cipher Index
  for (var i= 0; i<message.length; i++ ){
      if(this.ciphKeywordArray[i] + this.ciphMessageArray[i] < 26)
        this.ciphTextArray.push(this.ciphKeywordArray[i] + this.ciphMessageArray[i])
      else 
        this.ciphTextArray.push( (this.ciphKeywordArray[i] + this.ciphMessageArray[i]) -26 )
  };
  // Step 4: Create Cipher
  for (var i=0 ; i<this.ciphTextArray.length; i++ ){
    this.ciphText.push( alph[ this.ciphTextArray[i] ] )
  };

  this.ciphText= this.ciphText.join("")

};

function deCipher(cipher,keyword){

}

var x = new Cipher("attack","lem")