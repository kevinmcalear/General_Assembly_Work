def make_change(cents)
  # value = cents

  # quarters = value / 25
  # value %= 25

  # dimes = value / 10
  # value %= 10

  # nickels = value / 5
  # value %= 5

  # pennies = value

  quarters = number_of_coins(cents, 25)
  dimes = number_of_coins(cents - quarters*25, 10)
  nickels = number_of_coins(cents - quarters*25 - dimes*10, 5)
  pennies = cents - quarters*25 - dimes*10 - nickels*5

  "Quarters: #{quarters}, Dimes: #{dimes}, Nickels: #{nickels}, Pennies: #{pennies}"
end

def make_change_2(cents)
  coins = {
    "quarters" => 25,
    "dimes" => 10,
    "nickels" => 5,
    "pennies" => 1}

  vnum_coins = coins.map do |coin, value|
    num_coin = cents / value
    cents %= value
    coin => num_coin
  end

  answer = []
  vnum_coins.each do |coin, value|
    answer << "#{value} #{coin}s"
  end

  answer.join(", ")

end

def number_of_coins(cents, coin_value)
  cents / coin_value
end


def make_cents(quarters, dimes, nickels, pennies)
  value = get_value(quarters, dimes, nickels, pennies)

  dollars = value / 100
  value %= 100
  cents = value

  zero = "0" if cents < 10

  "$#{dollars}.#{zero}#{cents}"
end

def get_value(quarters, dimes, nickels, pennies)
  25 * quarters + 10 * dimes + 5 * nickels + pennies
end