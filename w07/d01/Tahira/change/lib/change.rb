def make_change(cents)
  quarters = 0
  dimes = 0
  nickels = 0 
  pennies = 0
   cents.downto(2) do |n| 
      if n % 25 == 0
        quarters += 1
        cents = cents - 25
      end
   end
  cents.downto(2) do |n| 
      if n % 10 == 0
        dimes += 1
        cents = cents - 10
      end
   end
   cents.downto(2) do |n| 
      if n % 5 == 0
        nickels += 1
        cents = cents - 5 
      end
   end
   cents.downto(1) do |n|
      if n % 1 == 0 
        pennies += 1
        cents = cents - 1
      end
    end
  return "#{quarters} quarters, #{dimes} dimes, #{nickels} nickels, #{pennies} pennies"
end


