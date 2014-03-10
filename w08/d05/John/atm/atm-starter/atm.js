var checkingBalance = 0;
var savingsBalance = 0;
var displayChecking = document.getElementById("checking_balance");
var displaySavings = document.getElementById("savings_balance");
displayChecking.classList.add("zero");
displaySavings.classList.add("zero");

var refreshDisplay = function() {
  if (checkingBalance === 0) {
    displayChecking.classList.add("zero");
  } else {
    displayChecking.classList.remove("zero");
  }

  if (savingsBalance === 0) {
    displaySavings.classList.add("zero");
  } else {
    displaySavings.classList.remove("zero");
  }
  displayChecking.innerText = "$" + checkingBalance;
  displaySavings.innerText = "$" + savingsBalance;
};

var checking = function(e){
  var enteredAmount = document.getElementById("checking_amount");
  var amount = parseInt(enteredAmount.value);
  
  if (amount < 0) {
  }
  else if (e.target.id === "checking_deposit") {
    checkingBalance += amount;
  }
  else if (checkingBalance >= amount) {
    checkingBalance -= amount;
  }
  else if ((checkingBalance + savingsBalance) >= amount) {
    amount -= checkingBalance;
    checkingBalance = 0;
    savingsBalance -= amount;
  }

  refreshDisplay();
  
  enteredAmount.value = "";
};

var savings = function(e) {
  var enteredAmount = document.getElementById("savings_amount");
  var amount = parseInt(enteredAmount.value);

  if (amount < 0) {
  }
  else if (e.target.id === "savings_deposit") {
    savingsBalance += amount;
  }
  else if (savingsBalance >= amount) {
    savingsBalance -= amount;
  }

  refreshDisplay();

  enteredAmount.value = "";
};

var checkingDiv = document.getElementById("account1");
var savingsDiv = document.getElementById("account2");
checkingDiv.addEventListener("click", checking);
savingsDiv.addEventListener("click", savings);

