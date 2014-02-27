require 'pry'

class Hexadecimal

  def to_decimal(hex)
    # binding.pry
    letter_to_dec = {'0'=> 0, '1'=> 1, '2'=> 2, '3'=> 3, '4'=> 4, '5'=> 5, '6'=> 6, '7'=> 7, '8'=> 8, '9'=> 9, 'a'=> 10, 'b'=> 11, 'c'=> 12, 'd'=> 13, 'e'=> 14, 'f'=> 15}


    # letter_to_dec[hex[0]] * 16 + letter_to_dec[hex[1]]  

    digits = hex.chars.reverse
    answer = digits.map do |digit|
      binding.pry
      letter_to_dec[digit] * (16 ** digits.index(digit))
    end

    answer.reduce(0) { |sum, n| sum + n }
    # answer
    
  end

end