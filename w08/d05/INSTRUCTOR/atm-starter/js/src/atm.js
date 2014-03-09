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