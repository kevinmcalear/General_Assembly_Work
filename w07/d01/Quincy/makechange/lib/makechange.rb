class Change
  def whole_num(cents)
    if (cents%25) == 0
      return cents/25
    elsif (cents%10) == 0
      return (cents/10)
    elsif (cents%5) == 0
      return (cents/5)
    else
      return "You'll need some pennies"
    end
  end

  def pennies(cents)
    if (cents%25) >= 1 || (cents%25) <=4
      return cents%25
    elsif (cents%10) >= 1 || (cents%10) <=4
      return (cents%10)
    elsif (cents%5) >= 1 || (cents%5) <=4
      return (cents%5)
    else
      return 0
    end
  end

  def make_change(cents)
    if cents%25 != 0
      quarters = cents/25
      return "#{quarters} quarters"
    elsif



  end
end
