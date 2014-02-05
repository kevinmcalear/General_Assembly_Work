x	#Sinatra Calculator

###Objectives:
- Building a simple Sinatra app with GET and POST

###Prompt
- You will be building a calculator (AGAIN?!?). But this time it will work with the internet :)
- You should make git commits as you finish each phase, so you can see the history.

###Specification:
- When they visit the homepage (GET) (`/`), a user should see some text to welcome them to the calculator
- When they visit the `/calculator` page (GET), a user should be able to see all of the calculations that have been done in the past
- A user can see a the third calculation they've done in the past by visiting `/calculator/3` (GET). Same with any other number. If the calculation doesn't exist, they should see text saying that the id wasn't found.
- A user can POST an Addition calculation to `/calculator/add` by providing 2 numbers as parameters.
- Same with `/calculator/subtract`, `/calculator/multiply`, and `/calculator/divide`
- Use curl to try out your POST
- The calculator can add, subtract, multiply and divide.

###Bonus
- Translate one line of your MTA app to Sinatra
- When I visit `/mta/ts/us` using a GET, I should see "Your trip length from ts to us is 4 stops." in the browser.