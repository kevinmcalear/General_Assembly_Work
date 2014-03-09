//Open Question 1:  It seems that I dont' need to do querySelector for IDs?  Is that correct? 
//Open Question 2:  How to make more dry? 

//Variables
var xsavings_balance = parseInt(savings_balance.innerText.replace("$",""))
var xchecking_balance = parseInt(checking_balance.innerText.replace("$",""))
var xsavings_amount = parseInt(savings_amount.value.replace("$",""))
var xchecking_amount = parseInt(checking_amount.value.replace("$",""))

var accounts = document.querySelectorAll(".account")

//Functions
var depositChecking = function(){
  var xchecking_amount = parseInt(checking_amount.value.replace("$",""))
  var xchecking_balance = parseInt(checking_balance.innerText.replace("$",""))
  checking_balance.innerText = "$"+ ( xchecking_balance + xchecking_amount)
};
var depositSavings = function(){
  var xsavings_balance = parseInt(savings_balance.innerText.replace("$",""))
  var xsavings_amount = parseInt(savings_amount.value.replace("$",""))
  savings_balance.innerText = "$"+ ( xsavings_balance + xsavings_amount)
};
var withdrawChecking = function(){
  var xchecking_balance = parseInt(checking_balance.innerText.replace("$",""))
  var xchecking_amount = parseInt(checking_amount.value.replace("$",""))  
  var xsavings_balance = parseInt(savings_balance.innerText.replace("$",""))
  if (xchecking_amount <= xchecking_balance){
    checking_balance.innerText = "$"+ (xchecking_balance - xchecking_amount ) 
  }else if(xchecking_amount <= ( xsavings_balance + xchecking_balance ) ){
    checking_balance.innerText = "$0",
    savings_balance.innerText = "$"+ ( ( xsavings_balance + xchecking_balance )  - xchecking_amount )
  };


};
var withdrawSavings = function(){
  var xsavings_amount = parseInt(savings_amount.value.replace("$",""))
  var xsavings_balance = parseInt(savings_balance.innerText.replace("$",""))
  if (xsavings_amount <= xsavings_balance){
    savings_balance.innerText = "$"+ (xsavings_balance - xsavings_amount )
  };
};

//Event Listeners
checking_deposit.addEventListener("click",depositChecking)
savings_deposit.addEventListener("click",depositSavings)
checking_withdraw.addEventListener("click",withdrawChecking)
savings_withdraw.addEventListener("click",withdrawSavings)



//User Story:  Overdraft Protection
//Step 1:  if withdraw is greater than whats in checking, look at Savings
//Step 2:  If savings is greater than withdraw,
//Step 2a:  add checkings to savings
//Step 2b:  subtract amount from savings. 


//User Story:  Change the color of the panel
//REQ 1:  if the balance is zero, change the class
//Step 1:  Create an event listener for when either div changes
//Step 2: Create a function that will change the class to include "zero





checking_withdraw.addEventListener("click",function(eventObject){
  if(checking_balance.innerText === "$0"){
    checking_balance.className = "balance zero"
  }else if(checking_balance.innerText != "$0"){
    checking_balance.className = "balance"
  }
});

savings_withdraw.addEventListener("click",function(eventObject){
  if(savings_balance.innerText === "$0"){
    savings_balance.className = "balance zero"
  }else if(savings_balance.innerText != "$0"){
    savings_balance.className = "balance"
  }
});

checking_deposit.addEventListener("click",function(eventObject){
  if(checking_balance.innerText === "$0"){
    checking_balance.className = "balance zero"
  }else if(checking_balance.innerText != "$0"){
    checking_balance.className = "balance"
  }
});

savings_deposit.addEventListener("click",function(eventObject){
  if(checking_balance.innerText === "$0"){
    checking_balance.className = "balance zero"
  }else if(checking_balance.innerText != "$0"){
    checking_balance.className = "balance"
  }
});


