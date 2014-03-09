function Account(){
  this.checking = 0;
  this.savings = 0;
}

function withdraw(account, amount){
  if (this[account] >= amount) {
    this[account] -= amount;
    return this[account];
  } else {
    return this[account];
  }
}

function deposit(account, amount){
  this[account] += amount;
  return this[account];
}