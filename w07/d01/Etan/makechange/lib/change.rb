require 'pry'

def make_change(number)

  quarters = []
  dimes = []
  nickels = []
  pennies = []

    quarters << number / 25 
    potential_dimes = number % 25


    dimes << potential_dimes / 10 
    potential_nickels = potential_dimes % 10

    nickels << potential_nickels / 5
    pennies << potential_nickels % 5  

  return "Your change would be #{quarters} quarters, #{dimes} dimes, #{nickels} nickels and #{pennies} pennies! Have a good day."
end