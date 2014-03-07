///User Story A: Deposit Money to Checking
//Step 1: Find the Input Field
var checking_amount = document.querySelector("input#checking_amount")

//Step 2: Create a method that will break it down. 
var updateChecking = function(eventObject){
  eventObject.preventDefault();
  var checking_amount = document.querySelector("input#checking_amount")  
  var checking_balance = document.querySelector("div.balance")
  checking_balance.innerText = "$"+ checking_amount.value
};

//Step 3: Create an Event Listener
var checking_deposit = document.querySelector("input#checking_deposit")
checking_deposit.addEventListener("click",updateChecking)

///User Story B: Deposit Money to Savings
//Step 1: Find the Input Field
var savings_amount = document.querySelector("input#savings_amount")
//Step 2: Create a method that will break it down.
var updateSavings = function(eventObject){
  eventObject.preventDefault();
  var savings_amount = document.querySelector("input#savings_amount")  
  var savings_balance = document.querySelector("div#account2 div.balance")
  savings_balance.innerText = "$"+ savings_amount.value
};
//Step 3: Create an Event Listener
var savings_deposit = document.querySelector("input#savings_deposit")
savings_deposit.addEventListener("click",updateSavings)