  @hex_letter_conversion = {"A" => 10, "B" => 11, "C" => 12, "D" => 13, "E" => 14, "F" => 15 }
  

  def value_conversion(hex_number)
    i = 1
    while i < hex_number.length do
      values = []
      value = hex_number[hex_number.length - i] 
      if ("A".."F").to_a.include?(value)
        values << @hex_letter_conversion[value] * 16**(hex_number.length - i)
      else
        values << value.to_i  * 16**(hex_number.length - i)
      end
      i += 1
    end
     puts values.join("")
  end



  value_conversion("0F")
  value_conversion("8FD279")
