// var encode = function(word){

//   var encodedArray = word.match(/.{1,3}/);
//   var encodedWord = '';
//   for(var position = 0; position < 3; position++){ 
//     for(var i = 0; i < encodedArray.length; i++){
//       if(encodedArray[i][position] != undefined){
//         encodedWord = encodedWord + encodedArray[i][position]
//       };
//     };
//   };
//   return encodedWord;
// };


var encode = function(word){
  var encodedWord = '';
  var encodedArray = word.match(/.{1,4}/g);
  
  for(var i = 0; i < encodedArray.length; i++){
    if(encodedArray[i][0]){
      encodedWord += encodedArray[i][0]
    }
  }
  for(var i = 0; i < encodedArray.length; i++){
    if(encodedArray[i][1] + encodedArray[i][3]){
      encodedWord += encodedArray[i][1] + encodedArray[i][3]
    }
  }
  for(var i = 0; i < encodedArray.length; i++){
    if(encodedArray[i][2]){
      encodedWord += encodedArray[i][2]
    }
  }
  return encodedWord;
}

// "WEAREDISCOVEREDFLEEATONCE".match(/.{1,4}/)
//  012345
// "WECRLTEERDSOEEFEAOCAIVDEN"
 // 04