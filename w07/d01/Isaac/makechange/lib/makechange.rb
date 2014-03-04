def make_change(num_cents)
  # quarters = 0
  # dimes = 0
  # nickels = 0 
  # pennies = 0 

  # while num_cents > 0
  #   if num_cents >= 25
  #     num_cents -= 25
  #     quarters += 1
  #   elsif num_cents >= 10
  #     num_cents -= 10
  #     dimes += 1
  #   elsif num_cents >= 5
  #     num_cents -= 5
  #     nickels += 1
  #   elsif num_cents >= 1
  #     num_cents -= 1
  #     pennies += 1
  #   end
  # end

  quarters = num_cents / 25
  num_cents = num_cents % 25 
  dimes = num_cents / 10
  num_cents = num_cents % 10
  nickels = num_cents / 5
  num_cents = num_cents % 5
  pennies = num_cents
  results = { quarters: quarters, dimes: dimes, nickels: nickels, pennies: pennies }

end

