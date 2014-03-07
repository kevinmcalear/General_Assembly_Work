var depositAmount = document.getElementById("checking_amount");
var checkingBalance = document.getElementById("checking_balance");
var depositButton = document.getElementById("checking_deposit");

var checkingDeposit = function(){
  // e.preventDefault();
   var currentBalance = parseInt(checkingBalance.innerText.replace("$",""));
   var newAmount = currentBalance + parseInt(depositAmount.value.replace("$",""));
   checkingBalance.innerText = "$" + newAmount;
   depositAmount.value = "";
};

depositButton.addEventListener("click", checkingDeposit);