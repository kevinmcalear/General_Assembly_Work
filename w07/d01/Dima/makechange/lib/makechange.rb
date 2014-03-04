  def make_change(amount)
    quarters = amount / 25
    less_than_quarters = amount % 25
    dimes = less_than_quarters / 10
    less_than_dimes = less_than_quarters % 10
    nickels = less_than_dimes / 5
    less_than_nickels = less_than_dimes % 5
    pennies = less_than_nickels / 1
    return "#{quarters.to_s} quarter, #{dimes.to_s} dime, #{nickels.to_s} nickel, #{pennies.to_s} pennie"
  end
