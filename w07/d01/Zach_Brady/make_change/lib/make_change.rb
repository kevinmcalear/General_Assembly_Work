def make_change(money_to_my_name)
  # change_values = [ [0.25, num_quarters], [0.1, num_dimes], [0.05, num_nickels], [0.01, num_pennies] ]

  num_quarters = 0
  num_dimes = 0
  num_nickels = 0
  num_pennies = 0

  # calculate num_quarters, if any
  num_quarters = (money_to_my_name / 0.25 ).to_i
  money_to_my_name = ( (100 * money_to_my_name) % (100 * 0.25) ) / 100

  # calculate num_dimes, id any
  num_dimes = (money_to_my_name / 0.1 ).to_i
  money_to_my_name = ( (100 * money_to_my_name) % (100 * 0.1) ) / 100

  # calculate num_nickels, if any
  num_nickels = (money_to_my_name / 0.05 ).to_i
  money_to_my_name = ( (100 * money_to_my_name) % (100 * 0.05) ) / 100

  # calculated num_pennies, if any
  num_pennies = (money_to_my_name / 0.01 ).to_i
  
  # return string at bottom 
  message = ""

  if num_quarters == 1
    message += "#{num_quarters} quarter "
  elsif num_quarters > 0
    message += "#{num_quarters} quarters "  
  end

  if num_dimes == 1
    message += "#{num_dimes} dime "
  elsif num_dimes > 0
    message += "#{num_dimes} dimes "
  end

  if num_nickels > 0
    message += "#{num_nickels} nickel "
  end

  if num_pennies == 1
    message += "#{num_pennies} penny"
  elsif num_pennies > 0
    message += "#{num_pennies} pennies"
  end

  return message
end

# BETTER, DRYER METHOD BELOW

def makechange(cents)
  coin_values  = [25, 10, 5, 1]

  num_coins = coin_values.map do |value|
    num_coin = cents/value
    cents = cents%value
    num_coin
  end
  return "#{num_coins[0]} quarters, #{num_coins[1]} dimes, #{num_coins[2]} nickles, and #{num_coins[3]} pennies."

end