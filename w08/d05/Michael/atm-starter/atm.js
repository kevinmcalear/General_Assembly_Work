///User Story A: Deposit Money to Checking

//Step 1: Create a method that will break it down. 
var updateChecking = function(){
  var checking_amount = document.querySelector("input#checking_amount")  
  var checking_balance = document.querySelector("div.balance")
  checking_balance.innerText = "$"+ (
    parseInt(checking_balance.innerText.replace("$","")) + 
    parseInt(checking_amount.value.replace("$",""))
    )
};

//Step 2: Create an Event Listener
var checking_deposit = document.querySelector("input#checking_deposit")
checking_deposit.addEventListener("click",updateChecking)


///User Story B: Deposit Money to Savings
//Step 1: Find the Input Field
var savings_amount = document.querySelector("input#savings_amount")
//Step 2: Create a method that will break it down.
var updateSavings = function(eventObject){
  var savings_amount = document.querySelector("input#savings_amount")  
  var savings_balance = document.querySelector("div#account2 div.balance")
  savings_balance.innerText = "$"+ (
    parseInt(savings_balance.innerText.replace("$","")) + 
    parseInt(savings_amount.value.replace("$",""))
    )
};
//Step 3: Create an Event Listener
var savings_deposit = document.querySelector("input#savings_deposit")
savings_deposit.addEventListener("click",updateSavings)



//User Story C:  Withdraw Money from Checking
//Step 1: Create a Method that will withdraw
var withdrawChecking = function(){
  var checking_amount = document.querySelector("input#checking_amount")  
  var checking_balance = document.querySelector("div.balance")
  checking_balance.innerText = "$"+ (
    parseInt(checking_balance.innerText.replace("$","")) - 
    parseInt(checking_amount.value.replace("$",""))
    )
};
//Step 2: Create an Event Listener 
var checking_withdraw = document.querySelector("input#checking_withdraw")
checking_withdraw.addEventListener("click",withdrawChecking)


//User Story D:  Withdraw Money from Savings
//Step 1: Create a Method that will withdraw
var withdrawSavings = function(){
  var savings_amount = document.querySelector("input#savings_amount")  
  var savings_balance = document.querySelector("div#account2 div.balance")
  savings_balance.innerText = "$"+ (
    parseInt(savings_balance.innerText.replace("$","")) - 
    parseInt(savings_amount.value.replace("$",""))
    )
};
//Step 2: Create an Event Listener 
var savings_withdraw = document.querySelector("input#savings_withdraw")
savings_withdraw.addEventListener("click",withdrawSavings)



