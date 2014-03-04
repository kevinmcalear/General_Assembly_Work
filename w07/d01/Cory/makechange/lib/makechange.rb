def make_change(cents)
  quarter = cents/25
  cents = cents%25
  dime = cents/10
  cents = cents%10
  nickle = cents/5
  cents = cents%5
  penny = cents
  return "#{quarter} quarters, #{dime} dimes, #{nickle} nickles, and #{penny} pennies."
end