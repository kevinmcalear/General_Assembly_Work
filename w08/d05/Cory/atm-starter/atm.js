// Find elements for checking
var depositButton = document.getElementById("checking_deposit");
var withdrawButton = document.getElementById("checking_withdraw");
var checkingAmount = document.getElementById("checking_amount");
var checkingBalance = document.getElementById("checking_balance");
var checkingAccountDiv = document.getElementById("account1");

// Find elements for savings
var savingsDepositButton = document.getElementById("savings_deposit");
var savingsWithdrawButton = document.getElementById("savings_withdraw");
var savingsAmount = document.getElementById("savings_amount");
var savingsBalance = document.getElementById("savings_balance");
var savingsAccountDiv = document.getElementById("account2");


// Build functions for checking
var addToChecking = function() {
  checking_balance.innerText = "$" + (parseInt(checking_balance.innerText.replace("$", "")) + 
    parseInt(checking_amount.value.replace("$", "")));  
};

var subtractFromChecking = function() {
  if((parseInt(checking_balance.innerText.replace("$", "")) - 
    parseInt(checking_amount.value.replace("$", ""))) >= 0) {

    checking_balance.innerText = "$" + (parseInt(checking_balance.innerText.replace("$", "")) - 
    parseInt(checking_amount.value.replace("$", "")));
  
 } else if((parseInt(checking_balance.innerText.replace("$", "")) - 
    parseInt(checking_amount.value.replace("$", ""))) < 0 && (parseInt(savings_balance.innerText.replace("$", "")) -
    parseInt(checking_amount.value.replace("$", ""))) >= 0){

    var overdraftBalance = (parseInt(checking_amount.value.replace("$", "")) - 
    parseInt(checking_balance.innerText.replace("$", "")));

    savings_balance.innerText = "$" + (parseInt(savings_balance.innerText.replace("$", "")) - 
    overdraftBalance);
    
    checking_balance.innerText = "$" + "0";

  } else {
    alert("You can't withdraw more than you have!");
  }
    checkingAccountDiv.classList.add("zero");
};

// Build functions for savings
var addToSavings = function() {
  savings_balance.innerText = "$" + (parseInt(savings_balance.innerText.replace("$", "")) +
  parseInt(savings_amount.value.replace("$", "")));
};

var subtractFromSavings = function() {
  if((parseInt(savings_balance.innerText.replace("$", "")) -
    parseInt(savings_amount.value.replace("$", ""))) >= 0) {

    savings_balance.innerText = "$" + (parseInt(savings_balance.innerText.replace("$", "")) -
    parseInt(savings_amount.value.replace("$", "")));
  
  } else {
    alert("You can't withdraw more than you have!");
  }
  savingsAccountDiv.classList.add("zero");
};


// Add event listeners for checking
depositButton.addEventListener("click", addToChecking);
withdrawButton.addEventListener("click", subtractFromChecking);

// Add event listeners for savings
savingsDepositButton.addEventListener("click", addToSavings);
savingsWithdrawButton.addEventListener("click", subtractFromSavings);



