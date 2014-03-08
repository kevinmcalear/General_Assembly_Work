//Bank of GA ATM
//Shawn Broukhim
var accounts = document.querySelectorAll("div.account");

//checking info:
var checkingBalance = document.querySelector("div.balance#checking_balance");
var checkingDeposit = document.querySelector("input#checking_deposit");
var checkingWithdraw = document.querySelector("input#checking_withdraw");
var checkingInput = document.querySelector("input#checking_amount");

//savings info:
var savingsBalance = document.querySelector("div.balance#savings_balance");
var savingsDeposit = document.querySelector("input#savings_deposit");
var savingsWithdraw = document.querySelector("input#savings_withdraw");
var savingsInput = document.querySelector("input#savings_amount");

//add event listener to checking account
accounts[0].addEventListener("click", function(e){
  console.log(e.target);
  if (e.target.id === "checking_withdraw" ) { withdraw(checkingBalance, checkingInput); }
  if (e.target.id === "checking_deposit" ) { deposit(checkingBalance, checkingInput); } 
});

//add event listener to savings account
accounts[1].addEventListener("click", function(e){
  console.log(e.target);
  if (e.target.id === "savings_withdraw" ) { withdraw(savingsBalance, savingsInput); }
  if (e.target.id === "savings_deposit" ) { deposit(savingsBalance, savingsInput); } 
});

//account withdraw function  
var withdraw = function(accountBalance, accountInput) {
  var value = accountBalance.innerText.split("$");
  var newTotal = parseInt(value[1])  - parseInt(accountInput.value);
  var siblingAccount = accountBalance.parentElement.nextElementSibling.children[1] || accountBalance.parentElement.previousElementSibling.children[1];
  var siblingAmount = parseInt(siblingAccount.innerText.split("$")[1]);

  //check if withdrawal amount exceeds balance
  //if so withdraw from other account  
  if( newTotal <= 0 ) {
    var remainder = Math.abs(newTotal);
    
    if( siblingAmount >= remainder ) {
      accountBalance.innerText = "$0";
      var newAmount = siblingAmount - remainder;
      siblingAccount.innerText = "$" + newAmount;
      accountBalance.style.background = "#F52F4F";

      if( siblingAccount.innerText === "$0" ) {
        siblingAccount.style.background = "#F52F4F";
      };
    //unless other account doesn't have enough funds
    } else {
      alert( "Invalid Withdraw Request" );
    };

  } else {
    accountBalance.innerText = "$" + newTotal;
  };
};

//account deposit function
var deposit = function( accountBalance, accountInput ) {
  var value = accountBalance.innerText.split( "$" );
  var newTotal = parseInt( value[1] ) + parseInt( accountInput.value );
  accountBalance.innerText = "$" + newTotal;
  accountBalance.style.background = "#E3E3E3";
};