# def initialize(given_change)
#   change_picks = (1..given_change).to_a
#   @change_purse = {}

#   if change_picks.take_while { |cent| cent % 25 == 0}
#     @change_purse[:quarter] = amount
#   end




#   # while given_change > 0
#   #   counter = 1
#   #   until given_change % counter == 0
#   #     counter + 1
#   #     @change_purse << "#{counter} quarter"
#   #   end
#   # end
# end

def makechange(cents)
  coin_values  = [25, 10, 5, 1]

  num_coins = coin_values.map do |value|
    num_coin = cents/value
    cents = cents%value
    num_coin
  end
  return "#{num_coins[0]} quarters, #{num_coins[1]} dimes, #{num_coins[2]} nickles, and #{num_coins[3]} pennies."

end