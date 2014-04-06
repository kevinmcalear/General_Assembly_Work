def multiply_card_values(card_number)
  (0...card_number.length).step(2).each do | index |
   puts card_number[index] * 2
  end 
end

def add_digits(card_numbers)

end

def 



def credit_card_valid?(account_number)
  digits = account_number.split('').map.to_i
  check = digits.pop

  sum = digits.reverse.each_slice(2).flat_map do |x, y|
    [(x * 2)(10), y || 0]
  end.inject(:+)

  (10 - sum % 10) == check
end
