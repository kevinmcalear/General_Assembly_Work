//Open Question 1:  It seems that I dont' need to do querySelector for IDs?  Is that correct? 
//Open Question 2:  What other ways could withdraws be managed with the overdraft protection rules. 



//Functions
var balanceZero = function(eventObject){
  if(checking_balance.innerText === "$0"){
    checking_balance.classList.add("zero")
  }else{
    checking_balance.classList.remove("zero")
  };
  if(savings_balance.innerText === "$0"){
    savings_balance.classList.add("zero")
  }else{
    savings_balance.classList.remove("zero")
  };
};

var deposits = function(eventObject){ 
  var account = eventObject.target.parentElement
  var amount = parseInt( account.children[2].value.replace("$","") )
  var balance = parseInt( account.children[1].innerText.replace("$","") )
  account.children[1].innerText = "$"+ (amount + balance)

  balanceZero(); 
};

var withdrawChecking = function(){
  var xchecking_balance = parseInt(checking_balance.innerText.replace("$",""))
  var xchecking_amount = parseInt(checking_amount.value.replace("$",""))  
  var xsavings_balance = parseInt(savings_balance.innerText.replace("$",""))
  if(xchecking_amount <= xchecking_balance){
    checking_balance.innerText = "$"+ (xchecking_balance - xchecking_amount ) 
  }else if(xchecking_amount <=( xsavings_balance + xchecking_balance ) ){
    checking_balance.innerText = "$0",
    savings_balance.innerText = "$"+ ( xsavings_balance - (xchecking_amount- xchecking_balance) )
  };
  balanceZero()
};
var withdrawSavings = function(){
  var xsavings_amount = parseInt(savings_amount.value.replace("$",""))
  var xsavings_balance = parseInt(savings_balance.innerText.replace("$",""))
  if (xsavings_amount < xsavings_balance){
    savings_balance.innerText = "$"+ (xsavings_balance - xsavings_amount )
  }else if(xsavings_amount === xsavings_balance){
    savings_balance.innerText = "$"+ (xsavings_balance - xsavings_amount )
  };
  balanceZero()
};

//Event Listeners
window.onload = balanceZero()
content.addEventListener("change",deposits)

checking_withdraw.addEventListener("click",withdrawChecking)
savings_withdraw.addEventListener("click",withdrawSavings)




