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

console.log(loopFactorial(5));
console.log(recFactorial(5));

function loopFib(n){
  var fib1 = 0;
  var fib2 = 1;
  var sum = fib1 + fib2;
  for( var i = 1; i < n; i++){
    sum = fib1 + fib2;
    fib1 = fib2;
    fib2 = sum;
  }
  return sum;
}

function recFib(n) {
  if (n === 0){
    return 0;
  } else if (n === 1) {
    return 1;
  } else {
    return recFib(n-1) + recFib(n-2);
  }
}





