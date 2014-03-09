function Account(){
  this.checking = 0;
  this.savings = 0;
}

function withdraw(account, amount){
  if (this[account] >= amount) {
    this[account] -= amount;
    return this[account];
  } else {
    if (this.savings + this.checking >= amount) {
      amount -= this[account];
      this[account] = 0;
      otherAccount = (account === "savings") ?
        "checking" : "savings";
      this[otherAccount] -= amount;  
    }
    return this[account];
  }
}

function deposit(account, amount){
  this[account] += amount;
  return this[account];
}