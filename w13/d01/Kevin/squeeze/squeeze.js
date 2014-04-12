var squeeze = function(word){
  var wordArray = word.split('');
  for(i = 0; i < wordArray.length; ){
    if( wordArray[i] === wordArray[i+1]){
      wordArray.splice(i, 1);
    } 
    else {
      i++;
    };
  }; 
  return wordArray.join('');
};