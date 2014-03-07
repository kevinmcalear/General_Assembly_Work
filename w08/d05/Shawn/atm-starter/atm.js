var checkingBalance = document.querySelector("div.balance#checking_balance");
var checkingDeposit = document.querySelector("input#checking_deposit");
var checkingWithdraw = document.querySelector("input#checking_withdraw");
var checkingInput = document.querySelector("input#checking_amount");

checkingDeposit.addEventListener("click", function() {
  var value = checkingBalance.innerText.split("$");
  var newTotal = parseInt(value[1]) + parseInt(checkingInput.value);
  checkingBalance.innerText = "$" + newTotal;
});

checkingWithdraw.addEventListener("click", function() {
  var value = checkingBalance.innerText.split("$");
  var newTotal = parseInt(value[1]) - parseInt(checkingInput.value);
  if(newTotal < 0 ){
    console.log("this should take from savings");
  }
  checkingBalance.innerText = "$" + newTotal;
});