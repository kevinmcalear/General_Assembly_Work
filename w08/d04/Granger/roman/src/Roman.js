ROMANHASH = {1:"I", 5:"V", 10:"X", 50: "L", 100: "C", 500: "D", 1000:"M"};
NUMKEYS = [1000, 500, 100, 100, 50, 10, 5, 1];


var romanize = function(number) {
  var answer = "";
  var prefix = "";
  var answerHash = {};


  for(var i = 0; i < NUMKEYS.length - 1; i++) {
    var value = NUMKEYS[i];
    var let = ROMANHASH[value];
    answerHash = onionLayer(value, let, number);
    answer += repeat(let, answerHash["letter"]);
    number = answerHash["I"];
    prefix = answerHash["pre"] || prefix;  
  } 

   answer += repeat("I", answerHash["I"] || number);

  return   (answerHash["pre"] || prefix) + answer;
};

var repeat = function(letter, times) {
  var result = "";
  for(var i = 0; i < times; i++) {
    result += letter;
  }
  return result;
};

var onionLayer = function(val, letter, number) {
  var div = Math.floor(number/val);

  var next = NUMKEYS[NUMKEYS.indexOf(val)];

  if ((val === number + next)) {
    div = div + next;
    var prefix = ROMANHASH[next];
    number = number%(val*div - next);
  }
  else {
    number = number%val;
  }
  return {"pre": prefix, letter: div, "I": number}
}


