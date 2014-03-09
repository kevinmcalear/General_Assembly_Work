//Open Question 1:  It seems that I dont' need to do querySelector for IDs?  Is that correct? 
//Task 2:  Do event listeners on window load. 

//Variables
var xsavings_balance = parseInt(savings_balance.innerText.replace("$",""))
var xchecking_balance = parseInt(checking_balance.innerText.replace("$",""))
var xsavings_amount = parseInt(savings_amount.value.replace("$",""))
var xchecking_amount = parseInt(checking_amount.value.replace("$",""))

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
  if (xchecking_amount =< xchecking_balance){
    checking_balance.innerText = "$"+ (xchecking_balance - xchecking_amount ) 
  }else if(xchecking_amount =< ( xsavings_balance + xchecking_balance ) ){
    checking_balance.innerText = "$0",
    savings_balance.innerText = "$"+ ( xsavings_balance + xchecking_balance )
};
var withdrawSavings = function(){
  var xsavings_amount = parseInt(savings_amount.value.replace("$",""))
  var xsavings_balance = parseInt(savings_balance.innerText.replace("$",""))
  if (xsavings_amount =< xsavings_balance){
    savings_balance.innerText = "$"+ (xsavings_balance - xsavings_amount )
  }
};

var balanceZero = function(eventObject){
  if(eventObject.innerText=== "$0"){
    eventObject.classList.add("zero")
  }else if (eventObject.innerText!= "$0"){
    eventObject.classList.remove("zero")
  }
};

//Event Listeners
window.onload = balanceZero
content.addEventListener("change",balanceZero)
checking_deposit.addEventListener("click",depositChecking)
savings_deposit.addEventListener("click",depositSavings)
checking_withdraw.addEventListener("click",withdrawChecking)
savings_withdraw.addEventListener("click",withdrawSavings)
