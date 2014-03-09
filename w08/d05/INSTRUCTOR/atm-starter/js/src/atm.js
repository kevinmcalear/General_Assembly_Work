function Account(){
  this.checking = 0;
  this.savings = 0;
}

function withdraw(account, amount){
  if (account >= amount) {
    return account - amount;
  } else {
    //throw "Overdraft";
    return account;
  }
}

function deposit(account, amount){
  return account + amount;
}