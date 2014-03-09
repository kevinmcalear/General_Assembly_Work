function ATM(initialAmounts){
  initialAmounts = initialAmounts || {}; //ensure defined...
  this.checking = initialAmounts.checking || 0;
  this.savings = initialAmounts.savings || 0;

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
    return true;
  }

  this.deposit = function(account, amount) {
    this[account] += amount;
    return true;
  }
}