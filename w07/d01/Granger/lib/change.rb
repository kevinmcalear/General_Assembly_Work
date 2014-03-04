require 'pry'

def make_change2(cents)
  @cents = cents
  {q: changer(25), d: changer(10), n: changer(5), p: @cents}
end

def changer(div)
  num = @cents/div
  @cents = @cents - num*div
  num
end

def make_change3(cents)
  {25 => 0, 10 => 0, 5 => 0, 1 => 0}.reduce({}) do |hsh, pair|
    v = cents/pair[0]
    cents = cents % pair[0]
    hsh[pair[0]] = v
    hsh
  end
end








def make_change(cents)

  quarters = cents/25
  cents = cents - quarters*25

  dimes = cents/10
  cents = cents - dimes*10
  
  nickels = cents/5
  cents = cents - nickels*5

  pennies = cents

  {q: quarters, d: dimes, n: nickels, p: pennies}

end

def add_change(quarters, dimes, nickels, pennies)
  (quarters*25) + (dimes*10) + (nickels*5) + pennies
end

