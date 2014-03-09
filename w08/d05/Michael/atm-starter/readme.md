ATM application
We 're going to build an application to keep track of the checking and savings balances. You can play with an example of what a working version will do in the atm-obfuscate folder.

User Stories

As a user, I want to deposit money into one of the bank accounts
As a user, I want to withdraw money from one of the bank accounts

##REFACTOR##

Make sure the balance in an account can't go negative. If a user tries to withdraw more money than exists in the account, ignore the transaction.

As a user, I want overdraft protection
What happens when the user wants to withdraw more money from the checking account than is in the account?
If a withdrawal can be covered by the balances in both accounts, take the balance of the account withdrawn from down to $0 and take the rest of the withdrawal from the other account.
If the withdrawal amount is more than the combined account balance, ignore it.

As a user, I want the color of my back account to reflect it's balance (there's a CSS class called .zero already written for this!)
Are there ways to refactor your code to make it DRYer or more Object-Oriented?
Tips

Tackle making your accounts work individually first
Then tackle them working together with overdraft protection
Only start working with the DOM after you have the logic down
Resources

What is window.onload for?
Adding Event Listeners so things happen when you click
Adding or removing a CSS class using JS
Changing HTML with JavaScript