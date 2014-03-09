//Open Question 1:  It seems that I dont' need to do querySelector for IDs?  Is that correct? 

//Functions
var depositChecking = function(){
  var xchecking_amount = parseInt(checking_amount.value.replace("$",""))
  var xchecking_balance = parseInt(checking_balance.innerText.replace("$",""))  
  checking_balance.innerText = "$"+ ( xchecking_balance + xchecking_amount);

  var xchecking_balance = parseInt(checking_balance.innerText.replace("$",""))
    if (xchecking_balance > 0){
      checking_balance.classList.remove("zero")
    };
};

 var depositSavings = function(){
  var xsavings_balance = parseInt(savings_balance.innerText.replace("$",""))
  var xsavings_amount = parseInt(savings_amount.value.replace("$",""))
  savings_balance.innerText = "$"+ ( xsavings_balance + xsavings_amount)

  var xsavings_balance = parseInt(savings_balance.innerText.replace("$",""))
    if (xsavings_balance > 0){
      savings_balance.classList.remove("zero")
    };

};

var withdrawChecking = function(){
  var xchecking_balance = parseInt(checking_balance.innerText.replace("$",""))
  var xchecking_amount = parseInt(checking_amount.value.replace("$",""))  
  var xsavings_balance = parseInt(savings_balance.innerText.replace("$",""))
  if(xchecking_amount < xchecking_balance){
    checking_balance.innerText = "$"+ (xchecking_balance - xchecking_amount ) 
  }else if(xchecking_amount === xchecking_balance){
    checking_balance.innerText = "$"+ (xchecking_balance - xchecking_amount )
    checking_balance.classList.add("zero")
  }else if(xchecking_amount < ( xsavings_balance + xchecking_balance ) ){
    checking_balance.innerText = "$0",
    savings_balance.innerText = "$"+ ( xsavings_balance - (xchecking_amount- xchecking_balance) )
    checking_balance.classList.add("zero")
  }else if(xchecking_amount === ( xsavings_balance + xchecking_balance ) ){
    checking_balance.innerText = "$0",
    savings_balance.innerText = "$"+ ( xsavings_balance - xchecking_amount )
    checking_balance.classList.add("zero")
    savings_balance.classList.add("zero")
  };
};
var withdrawSavings = function(){
  var xsavings_amount = parseInt(savings_amount.value.replace("$",""))
  var xsavings_balance = parseInt(savings_balance.innerText.replace("$",""))
  if (xsavings_amount < xsavings_balance){
    savings_balance.innerText = "$"+ (xsavings_balance - xsavings_amount )
  }else if(xsavings_amount === xsavings_balance){
    savings_balance.innerText = "$"+ (xsavings_balance - xsavings_amount )
    savings_balance.classList.add("zero")
  };
};

var balanceZero = function(){
  if(checking_balance.innerText === "$0"){
    checking_balance.classList.add("zero")
  }else if (checking_balance.innerText != "$0"){
    checking_balance.classList.remove("zero")
  };
  if(savings_balance.innerText === "$0"){
    savings_balance.classList.add("zero")
  }else if(savings_balance.innerText != "$0"){
    savings_balance.classList.remove("zero")
  };
};

var deposits = function(eventObject){ 
  var amount = parseInt( eventObject.value.replace("$","") ) 
  var balance = parseInt( eventObject.innerText.replace("$","") )
  eventObject.innerText = "$" + ( balance + amount)
};

// var withdraws = function(eventObject){
//   var amount = parseInt( eventObject.value.replace("$","") ) 
//   var balance = parseInt (eventObject.innerText.replace("$","") )
//   eventObject.innerText = "$" + (balance - amount)
//   if (eventObject.id = "account1" && amount > balance){

//   }
// };

//Event Listeners
window.onload = balanceZero()

// content.addEventListener("click",deposits)
// content.addEventListener("click",withdraws)
checking_deposit.addEventListener("click",depositChecking)
savings_deposit.addEventListener("click",depositSavings)
checking_withdraw.addEventListener("click",withdrawChecking)
savings_withdraw.addEventListener("click",withdrawSavings)
checking_balance.addEventListener("click",balanceZero)

