  var checkingBalance = 0;
  var savingsBalance = 0;

  var checking = function(e){
    var enteredAmount = document.getElementById("checking_amount");
    var amount = parseInt(enteredAmount.value);
    var displayChecking = document.getElementById("checking_balance");
    var displaySavings = document.getElementById("savings_balance");
    
    if (amount < 0) {
    }
    else if (e.target.id === "checking_deposit") {
      checkingBalance += amount;
    }
    else if (e.target.id === "checking_withdraw" && checkingBalance >= amount) {
      checkingBalance -= amount;
    }
    else if (e.target.id === "checking_withdraw" && (checkingBalance + savingsBalance) >= amount) {
      amount -= checkingBalance;
      checkingBalance = 0;
      savingsBalance -= amount;
    }

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
    enteredAmount.value = "";

  };

  var savings = function(e) {
    var enteredAmount = document.getElementById("savings_amount");
    var amount = parseInt(enteredAmount.value);
    var displayChecking = document.getElementById("checking_balance");
    var displaySavings = document.getElementById("savings_balance");

    if (amount < 0) {
    }
    else if (e.target.id === "savings_deposit") {
      savingsBalance += amount;
    }
    else if (e.target.id === "savings_withdraw" && savingsBalance >= amount) {
      savingsBalance -= amount;
    }


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
    enteredAmount.value = "";

  };




  var checkingDiv = document.getElementById("account1");
  var savingsDiv = document.getElementById("account2");
  // var checkDep = document.getElementById("checking_deposit");
  // var checkWd = document.getElementById(checking_withdraw);
  // var savDep = document.getElementById(savings_deposit);
  // var savWd = document.getElementById(savings_withdraw);

  checkingDiv.addEventListener("click", checking);
  savingsDiv.addEventListener("click", savings);

  var displayChecking = document.getElementById("checking_balance");
  var displaySavings = document.getElementById("savings_balance");
  displayChecking.classList.add("zero");
  displaySavings.classList.add("zero");

