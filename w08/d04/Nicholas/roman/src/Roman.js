
var romanize = function(num){
  var romans = [];
  var i = 0;

  if(num < 4){
  for(i = 0; i < num; i++){
    romans.push("I");
  }
  return romans.join("");
  }

  if(num === 4){
    return "IV";
  }

  if(num === 5){
    return "V";
  }

  if((num > 5)&&(num < 9)){
    var numsleft = num%5;
    romans.push("V");
    for(i = 0; i < numsleft; i++){
      romans.push("I");
    }
    return romans.join("");
  }

  if(num === 9){
    romans.push("IX");
  return romans.join("");
  }
  if(num === 10){
    return "X";
  }

  if(num > 10){
    var leftover = num%10;
    var div_by_ten = ((num - leftover)/10);
    for(i = 0; i < div_by_ten; i++){
      romans.push("X");
  }
    for(i = 0; i < leftover; i++){
      romans.push("I");
  }
    return romans.join("");
  }
};


