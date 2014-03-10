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

// Starts balance with class zero
var checkingBalanceClass = checkingBalance.classList.add("zero");
var savingsBalanceClass = savingsBalance.classList.add("zero");


// Build functions for checking
var addToChecking = function() {
  checking_balance.innerText = "$" + (parseInt(checking_balance.innerText.replace("$", "")) + 
  parseInt(checking_amount.value.replace("$", ""))); 

  checkingBalanceClass = checkingBalance.classList.remove("zero");
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
};

var addZeroChecking = function() {
  if(parseInt(checking_balance.innerText.replace("$", "")) === 0) {
    checkingBalanceClass = checkingBalance.classList.add("zero");
  }
};

var addZeroSavingsFromChecking = function() {
  if(parseInt(savings_balance.innerText.replace("$", "")) === 0) {
  savingsBalanceClass = savingsBalance.classList.add("zero");
  }
};

// Build functions for savings
var addToSavings = function() {
  savings_balance.innerText = "$" + (parseInt(savings_balance.innerText.replace("$", "")) +
  parseInt(savings_amount.value.replace("$", "")));

  savingsBalanceClass = savingsBalance.classList.remove("zero");
};

var subtractFromSavings = function() {
  if((parseInt(savings_balance.innerText.replace("$", "")) -
    parseInt(savings_amount.value.replace("$", ""))) >= 0) {

    savings_balance.innerText = "$" + (parseInt(savings_balance.innerText.replace("$", "")) -
    parseInt(savings_amount.value.replace("$", "")));
  
  } else {
    alert("You can't withdraw more than you have!");
  }
};

var addZeroSavings = function() {
  if(parseInt(savings_balance.innerText.replace("$", "")) === 0) {
  savingsBalanceClass = savingsBalance.classList.add("zero");
  }
};


// Add event listeners for checking
depositButton.addEventListener("click", addToChecking);
withdrawButton.addEventListener("click", subtractFromChecking);
withdrawButton.addEventListener("click", addZeroChecking);
withdrawButton.addEventListener("click", addZeroSavingsFromChecking);

// Add event listeners for savings
savingsDepositButton.addEventListener("click", addToSavings);
savingsWithdrawButton.addEventListener("click", subtractFromSavings);
savingsWithdrawButton.addEventListener("click", addZeroSavings);


