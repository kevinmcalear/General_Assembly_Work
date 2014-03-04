require 'pry'

##Attempt 2
def make_change(cents)
  @cents = cents
  @change = []
  coin_iterator
  return @change.join.chomp(" ")
end  

def coin_iterator
  coins = [ {"value"=>25,"type"=>"Q"},{"value"=>10,"type"=>"D"},{"value"=>5,"type"=>"N"},{"value"=>1,"type"=>"P"} ]

  coins.each do |coin| 
    if coin["value"] <= @cents
      num = @cents / coin["value"]
      @cents -= num * coin["value"]
      @change.push(num.to_s+coin["type"]+" ")
    end 
 
  end 

end 

def make_cents(q,d,n,p)
  @cents = (q*25) + (d*10) + (n*5) + (p*1)
  return @cents
end 


##Attempt 1:  Created a cascading nested

# def make_change(cents)
#   @cents = cents
#   @change = []
#   quarter
#   dime
#   nickel
#   penny
#   return @change.join.chomp(" ")
# end  

# def quarter
#   if @cents > 25
#     quarters = @cents / 25
#     @cents -= (quarters * 25)
#     @change.push(quarters.to_s+"Q ")
#   end  
# end  
# def dime
#   if @cents < 25 && @cents >= 10
#     dimes = @cents / 10
#     @cents -= (dimes * 10)
#     @change.push(dimes.to_s+"D ")
#   end  
# end
# def nickel
#   if @cents < 10 && @cents >= 5
#     nickel = @cents / 5
#     @cents -= (nickel * 5)
#     @change.push(nickel.to_s+"N ")
#   end  
# end
# def penny
#   if @cents < 5 && @cents >= 1
#     penny = @cents / 1
#     @cents -= (penny * 1)
#     @change.push(penny.to_s+"P ")
#   end  
# end

