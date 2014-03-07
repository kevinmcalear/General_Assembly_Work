

var cipher = function(){
  var message = prompt("What word would you like to encode?");
  var key = prompt("What cipher word would you like to use?");

  var original = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
  var split_message = message.split("");
  var split_key = key.split("");

  var original_letter_indexes = [];
  var code_letter_indexes = [];

  var new_nums = [];
  var final_word = [];

  for(var i = 0; i < split_message.length; i++){
   original_letter_indexes.push(original.indexOf(split_message[i],0));
  }

  for(i = 0; i < split_key.length; i++){
    code_letter_indexes.push(original.indexOf(split_key[i],0));
  }

  for(i = 0; i < original_letter_indexes.length; i++){
  var coded = original_letter_indexes[i] + code_letter_indexes[i];
  if(coded > 26){
    new_nums.push(coded - 26);
  }
  else {
    new_nums.push(coded);
  }
  }

 new_nums.forEach(function(letter){
  final_word.push(original[letter]);
 });
 document.getElementById("answer").innerHTML=("Your ciphered word is " + final_word.join(""));
};


// if(i > key.length){
//   i = 0;
// }
// else {
//   i = i + 1;
// }