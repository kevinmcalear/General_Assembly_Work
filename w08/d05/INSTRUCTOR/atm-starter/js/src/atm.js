function Account(){
  this.checking = 0;
  this.savings = 0;

  this.withdraw = function(account, amount) {
    if (this[account] >= amount) {
      this[account] -= amount;
    } else {
      if (this.savings + this.checking >= amount) {
        amount -= this[account];
        this[account] = 0;
        otherAccount = (account === "savings") ?
          "checking" : "savings";
        this[otherAccount] -= amount;  
      }
    }
    return this[account];
  }

  this.deposit = function(account, amount) {
    this[account] += amount;
    return this[account];
  }
}