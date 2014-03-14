console.log("Let's make ciphers")

var message = ""
var keyword = ""

var alph = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];


var messageToCiph = function(message){
  for (var i= 0; i<message.length; i++){
    this.ciphMessageArray.push( alph.indexOf( message[i] ) ) 
  };
}

var keywordToCiph = function(keyword, arg){
  for (var i= 0; i<arg.length; i++){
    this.ciphKeywordArray.push( alph.indexOf( keyword[(i % keyword.length)] ) ) 
  };
};

var ciphIndex = function(ciphKeywordArray, ciphMessageArray) {
  for (var i= 0; i<this.message.length; i++ ){
    if(ciphKeywordArray[i] + ciphMessageArray[i] < 26)
      this.ciphTextArray.push(ciphKeywordArray[i] + ciphMessageArray[i])
    else 
      this.ciphTextArray.push( (ciphKeywordArray[i] + ciphMessageArray[i]) -26 )
  };
};

var ciphIndexFromCiph = function(ciphText){
  for (var i= 0; i<ciphText.length; i++){
    this.ciphTextArray.push( alph.indexOf( ciphText[i] ) ) 
  };

};


var createCiphText = function(ciphTextArray){
  for (var i=0 ; i<ciphTextArray.length; i++ )
  {
    this.ciphText.push( alph[ ciphTextArray[i] ] )
  };
};


function Cipher(message,keyword) {
  this.message = message; 
  this.keyword = keyword; 
  this.ciphText = [];
  this.ciphMessageArray = [];
  this.ciphKeywordArray = [];
  this.ciphTextArray = [];

  // Step 1: Create Array of Message Index
  this.messageToCiph = messageToCiph
  this.messageToCiph(this.message)
 
  // Step 2: Create Array of Keyword Index
  this.keywordToCiph = keywordToCiph
  this.keywordToCiph(this.keyword, this.message)

  // Step 3: Create Array of Cipher Index
  this.ciphIndex = ciphIndex
  this.ciphIndex(this.ciphKeywordArray, this.ciphMessageArray)

  // Step 4: Create Cipher
  this.createCiphText = createCiphText
  this.createCiphText(this.ciphTextArray)
  this.ciphText= this.ciphText.join("")

};

function deCipher(ciphText,keyword){
  this.message = []; 
  this.keyword = keyword; 
  this.ciphText = ciphText;
  this.ciphMessageArray = [];
  this.ciphKeywordArray = [];
  this.ciphTextArray = [];


  // Step 1:  Create an Array of Keyword Index
  this.keywordToCiph = keywordToCiph
  this.keywordToCiph(this.keyword, this.ciphText)

  // Step 2:  Create an Array of Cipher Index
  this.ciphIndexFromCiph = ciphIndexFromCiph
  this.ciphIndexFromCiph(this.ciphText)

  // Step 3:  Create an Array of Message Index
  
  // Step 4:  Create a Message String

}

var x = new Cipher("attack","lem")
var y = new deCipher("lxflgw","lem")