# def determine_coin(money)
#   if money/25 >= 1
#     ["#{money/25} quarter(s)", money % 25, 25]
#   elsif money/10 >= 1
#     ["#{money/10} dime(s)", money % 10, 10]
#   elsif money/5 >= 1
#     ["#{money/5} nickel(s)", money % 5, 5]
#   else
#     ["#{money} pennies", money % 1, 0]
#   end
# end

# def make_change(money)
#   extra_change = 0
#   total_change = []
#   until money == 0
#     change = determine_coin(money + extra_change)
#     total_change << change[0]
#     extra_change += change[1]
#     money = money / change[2]
#   end
#   return total_change
# end

def change(cents)
  coin_values = [25, 10, 5, 1]

  coin_values.map do |coin_value|  
    numb_coin = cents / coin_value 
    cents = cents % coin_value
    numb_coin 
  end
end