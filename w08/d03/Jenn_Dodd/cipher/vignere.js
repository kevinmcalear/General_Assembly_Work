console.log("I am loaded!!");

var alph = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t", "u","v","w","x","y","z"];

var encryptedWord = ""

var alphIndex = 0

var message = prompt("What is your message? No spaces.");

var keyword = prompt("What is your keyword?");

var keywordedMessage = 

function encrypt() {
  for(var messagei = 0, messagei < message.length, messagei++) {
    alphIndex = m
    encryptedWord += alph[alphIndex%26];
  };
  return encryptedWord;
};