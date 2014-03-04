require 'pry'

def to_decimal(hex)
  
  hex_array = hex.split("").reverse
  total = 0
  key_array = {"a" => 10, "b" => 11, "c" => 12, "d" => 13, "e" => 14, "f" => 15, "0" => 0}

  hex_array.each_with_index do |hex,index|
    hex_value = 0

    if hex.to_i != 0 # if hex is a number (0 not included)
      hex_value = hex.to_i
    else
      hex_value = key_array[hex]
    end
    total += 16**index * hex_value
    
  end

  total

end
binding.pry