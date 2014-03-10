# def makechange(amount)
# amount = amount * 100
  
#   if amount % 25 == 0
#     quarters = amount/25
#     return quarters
#   elsif amount % 10 == 0
#     dimes = amount/10
#     return dimes.to_i
#   elsif amount % 5 == 0 
#     nickels = amount/5
#     return nickels.to_i
#   else 
#     pennies = amount/1
#     return pennies.to_i
#   end

# end

# next_num = amount % 25
# following_num = next_num % 10
# the_following_num = following_num % 5
# the_last_num = the_following_num % 1

def makechange(cents)
  coin_values  = [25, 10, 5, 1]

  num_coins = coin_values.map do |value|
    num_coin = cents/value
    cents = cents%value
    num_coin
  end
  return "#{num_coins[0]} quarters, #{num_coins[1]} dimes, #{num_coins[2]} nickles, and #{num_coins[3]} pennies."

end