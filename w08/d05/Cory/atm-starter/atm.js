// Find elements for checking
var depositButton = document.getElementById("checking_deposit");
var withdrawButton = document.getElementById("checking_withdraw");
var checkingAmount = document.getElementById("checking_amount");
var checkingBalance = document.getElementById("checking_balance");

// Find elements for savings
var savingsDepositButton = document.getElementById("savings_deposit");
var savingsWithdrawButton = document.getElementById("savings_withdraw");
var savingsAmount = document.getElementById("savings_amount");
var savingsBalance = document.getElementById("savings_balance");



// Build Functions for checking
var addToChecking = function() {
  checking_balance.innerText = "$" + (parseInt(checking_balance.innerText.replace("$", "")) + 
  parseInt(checking_amount.value.replace("$", "")));  
};

var subtractFromChecking = function() {
  checking_balance.innerText = "$" + (parseInt(checking_balance.innerText.replace("$", "")) - 
  parseInt(checking_amount.value.replace("$", "")));
};

// Build functions for savings
var addToSavings = function() {
  savings_balance.innerText = "$" + (parseInt(savings_balance.innerText.replace("$", "")) +
    parseInt(savings_amount.value.replace("$", "")));
};

var subtractFromSavings = function() {
  savings_balance.innerText = "$" + (parseInt(savings_balance.innerText.replace("$", "")) -
    parseInt(savings_amount.value.replace("$", "")));
};



// Add event listeners for checking
depositButton.addEventListener("click", addToChecking);
withdrawButton.addEventListener("click", subtractFromChecking);

// Add event listeners for savings
savingsDepositButton.addEventListener("click", addToSavings);
savingsWithdrawButton.addEventListener("click", subtractFromSavings);



