function loopFactorial(n){
  var product = 1;
  for(var i = 1; i <= n; i++){
    product *= i;
  }
  return product;
}

function recFactorial(n){
  if (n === 1){
    return 1;
  }
  else {
    return n * recFactorial(n-1);
  }
}


// Fibonacci Functions

function loopFibonacci(n){
  var previous = 1;
  var result = 0;

  for(var i = 1; i<= n; i++) {
    result += previous;
    previous = result - previous;
  }
  return result;
}


function recFibonacci(n){
  if (n < 3){
    return 1;
  }
  else {
    return recFibonacci(n-2) + recFibonacci(n-1);
  }
}



console.log(loopFactorial(5));
console.log(recFactorial(5));

console.log(loopFibonacci(5));
console.log(recFibonacci(5));