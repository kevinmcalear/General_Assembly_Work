# arr = (100..999).map {|i| i*i}
# string_arr = arr.map {|i| i.to_s}
# string_arr.map do |i|
#   if i.length == 6
#     six_dig = []
#     six_dig << i
#   end
# end

def is_palindrome?(num)
  return num.to_s == num.reverse
end

def has_2_3_dig_factors?(num)
  trhee_dig_num = (100..999).to_a
  products = []
  trhee_dig_num.each do |first_factor|
    three_dig_nums.each do |second_factor|
      product = first_factor * second_factor
      products << product
    end
  end
  return products.include?(number)
end

starting_number = 998001

while !is_palindrome?(starting_number) && !has_2_3_dig_factors(starting_number)
  starting_number -= 1
end

puts starting_number