def make_change(cents)
  if (cents/25)>1
    quarters = (cents/25.round)
    remaining_cents = cents-(quarters*25)
    if (remaining_cents/10)>1
      dimes = (remaining_cents/10.round)
      remaining_cents_2 = remaining_cents - (dimes*10)
      if (remaining_cents_2/5)>1
        
    elsif (remaining_cents/5)>1
      nickels = (remaining_cents/5.round)
    else
      pennies = remaining_cents
    end
  elsif (cents/10)>1
    dimes = (cents/10.round)
  elsif (cents/5)>1
    nickels = (cents/5.round)
  else
    pennies = cents
  end
end