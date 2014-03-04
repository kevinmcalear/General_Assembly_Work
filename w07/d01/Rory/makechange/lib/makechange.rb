require 'pry'
def make_change(cents)
  quarters = 0
  dimes = 0
  nickels = 0
  pennies = 0

  if (cents/25)>=1
    quarters = (cents/25).round
    remaining_cents = cents-(quarters*25)
    if (remaining_cents/10)>1

      dimes = (remaining_cents/10).round
      remaining_cents_2 = remaining_cents - (dimes*10)
      if (remaining_cents_2/5)>1
        nickels = (remaining_cents_2/5.round)
        pennies = remaining_cents_2-(nickels*5)
      end
    elsif (remaining_cents/5)>=1
      nickels = (remaining_cents/5.round)
      pennies = remaining_cents - (nickels*5)
    else
      pennies = remaining_cents
    end
  elsif (cents/10)>=1
    dimes = (cents/10.round)
    remaining_cents = cents - (dimes*10)
    if (remaining_cents/5)>=1
      nickels = (remaining_cents/5.round)
      pennies = remaining_cents - (nickels * 5)
    end
  elsif (cents/5)>=1
    nickels = (cents/5.round)
    pennies = cents - (nickels*5)
  else
    pennies = cents
  end

  return "Change is #{quarters} quarter(s), #{dimes} dime(s), #{nickels} nickel(s) and #{pennies} penn(y/ies)"
end

