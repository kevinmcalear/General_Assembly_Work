//Bank of GA ATM
//Shawn Broukhim
var accounts = document.querySelectorAll("div.account");

//account(s) info:

var accountBalance = [document.querySelector("div.balance#checking_balance"), document.querySelector("div.balance#savings_balance")];
var accountDeposit = [document.querySelector("input#checking_deposit"), document.querySelector("input#savings_deposit")];
var accountWithdraw = [document.querySelector("input#checking_withdraw"), document.querySelector("input#savings_withdraw")];
var accountInput = [document.querySelector("input#checking_amount"), document.querySelector("input#savings_amount")];

//add event listener to checking account
  accounts[0].addEventListener("click", function(e){
    console.log(e.target);
    if (e.target.id === "checking_withdraw" ) { withdraw(accountBalance[0], accountInput[0]); };
    if (e.target.id === "checking_deposit" ) { deposit(accountBalance[0], accountInput[0]); }; 
  });

//add event listener to savings account
accounts[1].addEventListener("click", function(e){
  console.log(e.target);
  if (e.target.id === "savings_withdraw" ) { withdraw(accountBalance[1], accountInput[1]); };
  if (e.target.id === "savings_deposit" ) { deposit(accountBalance[1], accountInput[1]); };
});

//account withdraw function  
var withdraw = function(accountBalance, accountInput) {
  var value = accountBalance.innerText.split("$");
  var newTotal = parseInt(value[1])  - parseInt(accountInput.value);
  var siblingAccount = accountBalance.parentElement.nextElementSibling.children[1] || accountBalance.parentElement.previousElementSibling.children[1];
  var siblingAmount = parseInt(siblingAccount.innerText.split("$")[1]);

  //check if withdrawal amount exceeds balance
  if( newTotal <= 0 ) {
    var remainder = Math.abs(newTotal);
    
    //if so & other account has enough funds
    //withdraw from other account  
    if( siblingAmount >= remainder ) {
      accountBalance.innerText = "$0";
      var newAmount = siblingAmount - remainder;
      siblingAccount.innerText = "$" + newAmount;
      accountBalance.style.background = "#F52F4F";
      //set sibling background to red if new balance is 0
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