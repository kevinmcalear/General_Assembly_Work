var checking_amount = document.querySelector('#checking_amount');
var checking_deposit = document.querySelector('#checking_deposit');
var checking_withdraw = document.querySelector('#checking_withdraw');

var savings_amount = document.querySelector('#savings_amount');
var savings_deposit = document.querySelector('#savings_deposit');
var savings_withdraw = document.querySelector('#savings_withdraw');

var checking = document.querySelector('#account1');
var savings = document.querySelector('#account2');

var checking_balance = document.querySelector('#checking_balance');
var savings_balance = document.querySelector('#savings_balance');

var depositChecking = function() {
  checking_amount.innerText = checking_amount.innerText + this.elements["checking_balance"].value;
};

var withdrawChecking = function() {
  if ( parseInt(this.elements["checking_balance"].value) > parseInt(checking_amount.innerText) ) {
    console.log("Not enough money to cover ths transaction");
} else {
    checking_amount.innerText = checking_amount.innerText - this.elements["checking_balance"].value;
  }
};

var depositSavings = function() {
  savings_amount.innerText = savings_amount.innerText + this.elements["savings_balance"].value;
};

var withdrawSavings = function() {
  if ( parseInt(this.elements["savings_balance"].value) > parseInt(savings_amount.innerText) ) {
    console.log("Not enough money to cover ths transaction");
} else {
    savings_amount.innerText = savings_amount.innerText - this.elements["savings_balance"].value;
  }
};


checking_deposit.addEventListener("submit", depositChecking());
checking_withdraw.addEventListener("submit", withdrawChecking());
savings_deposit.addEventListener("submit", depositSavings());
checking_withdraw.addEventListener("submit", withdrawSavings());


// savings.addEventListener("submit", adjustSavings)



