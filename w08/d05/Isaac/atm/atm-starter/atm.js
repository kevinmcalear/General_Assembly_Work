var checkingAccount = {

  balance: 1000,

  deposit: function(amount){
    this.balance = this.balance + amount;
  },

  withdraw: function(amount){
    if(this.balance-amount>=0){
      this.balance = this.balance - amount;
    }else if( savingsAccount.balance > (amount - this.balance) ){
      var remainder = amount - this.balance;
      this.balance = this.balance - (amount - remainder);
      savingsAccount.withdraw(remainder);
    }else{
      return "You can't do that";
    }
  }
};

var savingsAccount = {

  balance: 1000,

  deposit: function(amount){
    this.balance = this.balance + amount;
  },

  withdraw: function(amount){
    if(this.balance-amount>0){
      this.balance = this.balance - amount;
    }else{
        return "You can't do that.";
    }
  }
};

var showBalanceChecking = document.querySelector("#checking_balance");
showBalanceChecking.innerText = checkingAccount.balance;

var showBalanceSavings = document.querySelector("#savings_balance");

showBalanceSavings.innerText = savingsAccount.balance;

var inputBox = document.querySelector("#checking_amount");

var depositButton = document.querySelector("input#checking_deposit");

depositButton.addEventListener('click', function(){
  checkingAccount.deposit( parseInt(inputBox.value) );
  showBalanceChecking.innerText = checkingAccount.balance;
});

var withdrawButton = document.querySelector("input#checking_withdraw");

withdrawButton.addEventListener('click', function(){
  checkingAccount.withdraw( parseInt(inputBox.value) );
  showBalanceChecking.innerText = checkingAccount.balance;
  showBalanceSavings.innerText = savingsAccount.balance;
});

//Savings account
var sInputBox = document.querySelector("#savings_amount");
var sDepositButton = document.querySelector("input#savings_deposit");
var sWithdrawButton = document.querySelector("input#savings_withdraw");

sDepositButton.addEventListener('click', function(){
  savingsAccount.deposit( parseInt(sInputBox.value) );
  showBalanceSavings.innerText = savingsAccount.balance;
});

sWithdrawButton.addEventListener('click', function(){
  savingsAccount.withdraw( parseInt(sInputBox.value) );
  showBalanceSavings.innerText = savingsAccount.balance;
})









