var savingsBalance = document.querySelector("#savings_balance");
var checkingBalance = document.querySelector("#checking_balance");

var inputSavings = document.querySelector("#savings_amount");
var savingsDeposit = document.querySelector("#savings_deposit");
var savingsWithdraw = document.querySelector("#savings_withdraw");

var inputChecking = document.querySelector("#checking_amount");
var checkingDeposit = document.querySelector("#checking_deposit");
var checkingWithdraw = document.querySelector("#checking_withdraw");

var removeDollar = function(value) {
  value.innerText = value.innerText.slice(1);
};

var addDollar = function(value) {
  value.innerText = ("$" + value.innerText);
};

var red = function(balance){
  if(balance.innerText === "$0") {
    balance.classList.add("zero");
  } else {
    balance.classList.remove("zero");
  }
};

window.addEventListener("load", red(checkingBalance));
window.addEventListener("load", red(savingsBalance));

savingsDeposit.addEventListener("click", function(){
  removeDollar(savingsBalance);
  var originalAmount = parseInt(savingsBalance.innerText);
  var depositAmount = parseInt(inputSavings.value);
  savingsBalance.innerText = (originalAmount+depositAmount);
  addDollar(savingsBalance);
  red(savingsBalance);
  inputSavings.value = null;
});

savingsWithdraw.addEventListener("click", function(){
  removeDollar(savingsBalance);
  var originalAmount = parseInt(savingsBalance.innerText);
  var withdrawAmount = parseInt(inputSavings.value);
  if (originalAmount >= withdrawAmount){
    savingsBalance.innerText = (originalAmount-withdrawAmount)
  };
  addDollar(savingsBalance);
  red(savingsBalance);
  inputSavings.value = null;
});

checkingDeposit.addEventListener("click", function(){
  removeDollar(checkingBalance);
  var originalAmount = parseInt(checkingBalance.innerText);
  var depositAmount = parseInt(inputChecking.value);
  checkingBalance.innerText = (originalAmount+depositAmount);
  addDollar(checkingBalance);
  inputChecking.value = null;
  red(checkingBalance);
});

checkingWithdraw.addEventListener("click", function(){
  removeDollar(checkingBalance);
  removeDollar(savingsBalance);
  var originalAmount = parseInt(checkingBalance.innerText);
  var withdrawAmount = parseInt(inputChecking.value);
  var totalAmount = parseInt(checkingBalance.innerText) + parseInt(savingsBalance.innerText);
  if (originalAmount > withdrawAmount) {
    checkingBalance.innerText = (originalAmount-withdrawAmount)
    addDollar(checkingBalance);
    addDollar(savingsBalance);
  }
  else if(withdrawAmount > originalAmount && withdrawAmount < totalAmount) {
    checkingBalance.innerText = "$0";
    savingsBalance.innerText = (totalAmount - withdrawAmount)
    addDollar(savingsBalance);
  }
  else {
    addDollar(checkingBalance);
    addDollar(savingsBalance);
  };
  red(savingsBalance);
  red(checkingBalance);
  inputChecking.value = null;
});

// trying to set the accounts up as objects, couldn't get the event listeners to work.

// var removeDollar = function(value) {
//   value.innerText = value.innerText.slice(1);
// };

// var addDollar = function(value) {
//   value.innerText = ("$" + value.innerText);
// };

// var Account = function(name) {
//   this.name
//   this.deposit = document.querySelector("#"+name+"_deposit");
//   this.withdraw = document.querySelector("#"+name+"_withdraw");
//   this.balance = document.querySelector("#"+name+"_balance");
//   this.input = document.querySelector("#"+name+"_amount");
//   this.deposit.addEventListener("click", this.makeDeposit());
//   this.withdraw.addEventListener("click", this.makeWithdraw());
// };

// // some kind of scoping problem above. In 104, this.makeDeposit, this is the button. Can't figure out how to make it the account.

// Account.prototype.makeDeposit = function(){
//   removeDollar(this.balance);
//   var originalAmount = parseInt(this.balance.innerText);
//   var depositAmount = parseInt(this.input.value);
//   this.balance.innerText = (originalAmount+depositAmount);
//   addDollar(this.balance);
//   red(this.balance);
//   this.input.value = null;
// };

// Account.prototype.makeWithdraw = function() {
//   removeDollar(this.Balance);
//   var originalAmount = parseInt(this.balance.innerText);
//   var withdrawAmount = parseInt(this.input.value);
//   if (originalAmount >= withdrawAmount){
//     this.Balance.innerText = (originalAmount-withdrawAmount)
//   };
//   addDollar(this.Balance);
//   red(this.Balance);
//   this.input.value = null;
// };


// var red = function(balance){
//   if(balance.innerText === "$0") {
//     balance.classList.add("zero");
//   } else {
//     balance.classList.remove("zero");
//   }
// };

// var savings = new Account("savings");
// var checking = new Account("checking");

// window.addEventListener("load", red(savings.balance));
// window.addEventListener("load", red(checking.balance));








