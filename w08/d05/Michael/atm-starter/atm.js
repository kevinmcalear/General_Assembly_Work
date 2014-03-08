//Identify Any Variables
var checking_amount = document.querySelector("input#checking_amount")
var savings_amount = document.querySelector("input#savings_amount")
var checking_deposit = document.querySelector("input#checking_deposit")
var savings_deposit = document.querySelector("input#savings_deposit")
var checking_withdraw = document.querySelector("input#checking_withdraw")
var savings_withdraw = document.querySelector("input#savings_withdraw")
var checking_balance = document.querySelector("div.balance")

//Functions
var depositChecking = function(){
  checking_balance.innerText = "$"+ (
    parseInt(checking_balance.innerText.replace("$","")) + 
    parseInt(checking_amount.value.replace("$",""))
    )
};
var depositSavings = function(){
  savings_balance.innerText = "$"+ (
    parseInt(savings_balance.innerText.replace("$","")) + 
    parseInt(savings_amount.value.replace("$",""))
    )
};
var withdrawChecking = function(){
  var balance = parseInt(checking_balance.innerText.replace("$",""))
  var withdraw = parseInt(checking_amount.value.replace("$",""))
  if (withdraw < balance){
    checking_balance.innerText = "$"+ (balance - withdraw ) 
  };
};
var withdrawSavings = function(){
  var balance = parseInt(savings_balance.innerText.replace("$","")) 
  var withdraw = parseInt(savings_amount.value.replace("$",""))
  if (withdraw < balance){
    savings_balance.innerText = "$"+ (balance - withdraw )
  };
};
//Event Listeners
checking_deposit.addEventListener("click",depositChecking)
savings_deposit.addEventListener("click",depositSavings)
checking_withdraw.addEventListener("click",withdrawChecking)
savings_withdraw.addEventListener("click",withdrawSavings)



//User Story:  Overdraft Protection
//Step 1:  if withdraw is greater than whats in checking, look at Savings
//Step 2:  If savings is greater than withdraw, remove the additional amount from savings.  



