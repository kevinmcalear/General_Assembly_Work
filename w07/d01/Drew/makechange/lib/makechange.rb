def make_change(cents)
  # dollars = cents/100
  # cents = cents%100

  quarters = cents/25
  cents = cents%25

  dimes = cents/10
  cents = cents%10

  nickels = cents/5
  pennies = cents%5

  return {dollars: dollars, quarters: quarters, dimes: dimes, nickels: nickels, pennies: pennies}
end

def makechange(cents)
  coin_values  = [25, 10, 5, 1]

  num_coins = coin_values.map do |value|
    num_coin = cents/value
    cents = cents%value
    num_coin
  end
  return "#{num_coins[0]} quarters, #{num_coins[1]} dimes, #{num_coins[2]} nickles, and #{num_coins[3]} pennies."

end