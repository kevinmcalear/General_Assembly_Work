var checkingDeposit = document.getElementById('checking_deposit');
var checkingWithdraw = document.getElementById('checking_withdraw');

var deposit = function() {
  var balance = document.getElementById('checking_balance');
  var quantity = document.getElementById('checking_amount').value;
  balance.innerHTML = "$" + (parseInt(balance.innerHTML.replace(/\$|,/g, '')) + parseInt(quantity));
  // still need to reset the value to "enter an amount"
  // quantity.value = quantity.defaultValue;
};

var withdraw = function() {
  var balance = document.getElementById('checking_balance');
  var quantity = document.getElementById('checking_amount').value;
  // convert to number
  var numBalance = parseInt(balance.innerHTML.replace(/\$|,/g, ''))
  var numQuantity = parseInt(quantity)
  // savings balance as integer with no $ sign //
  var savings_balance = document.getElementById('savings_balance');
  var savingsNumBalance = parseInt(savings_balance.innerHTML.replace(/\$|,/g, ''));
  

  // must have sufficient funds in checking account
  if (numQuantity <= numBalance) {
    balance.innerHTML = "$" + (numBalance - numQuantity);
  } else 
    // if withdraw is larger than balance, check savings account //
    if (numQuantity > numBalance && (numQuantity <= (numBalance + savingsNumBalance))) {
      balance.innerHTML = "$" + 0;
      savings_balance.innerHTML = "$" + (savingsNumBalance - (numQuantity - numBalance));
  }; 
}

checkingDeposit.addEventListener('click', deposit);
checkingWithdraw.addEventListener('click', withdraw);



// SAVINGS ACCOUNT //

var savingsDeposit = document.getElementById('savings_deposit');
var savingsWithdraw = document.getElementById('savings_withdraw');

var savDeposit = function() {
  var balance = document.getElementById('savings_balance');
  var quantity = document.getElementById('savings_amount').value;
  balance.innerHTML = "$" + (parseInt(balance.innerHTML.replace(/\$|,/g, '')) + parseInt(quantity));
  // still need to reset the value to "enter an amount"
  // quantity.value = quantity.defaultValue;
};

var savWithdraw = function() {
  var balance = document.getElementById('savings_balance');
  var quantity = document.getElementById('savings_amount').value;
  // convert to number
  var numBalance = parseInt(balance.innerHTML.replace(/\$|,/g, ''))
  var numQuantity = parseInt(quantity)

  // must have sufficient funds 
  if (numQuantity <= numBalance) {
    balance.innerHTML = "$" + (numBalance - numQuantity)
  }
};

savingsDeposit.addEventListener('click', savDeposit);
savingsWithdraw.addEventListener('click', savWithdraw);

// CSS styling for dollars in bank account //

// var balanceCss = document.getElementsByClassName("balance");

// var redZero = function() {
//   console.log("hello")
//   // var balanceCssNumber = parseInt(balanceCss.innerHTML.replace(/\$|,/g, ''));
//   // console.log('Hey!')
//   // if (balanceCssNumber === 0) {
//   //   balanceCss.classList.add("zero")
//   // }
// };

// // balanceCss.addEventListener('onload', redZero);

