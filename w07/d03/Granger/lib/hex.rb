require 'pry'

class Hexadecimal
  HEX_HSH = {"a" => 10, "b" => 11, "c" => 12, "d" => 13, "e" => 14, "f" => 15, 
      "1" => 1, "2" => 2,"3" => 3,"4" => 4,"5" => 5,"6" => 6,
      "7" => 7,"8" => 8,"9" => 9,"0" => 0}

  def self.to_decimal(num)
    num = num.split("")
    num = num.each_with_index.map do |digit, index|
      HEX_HSH[digit] * (16**(num.length - 1 - index))
    end

    num.reduce(:+)
  end

  def self.to_hex(num)
    HEX_HSH.key(num)

  end

end