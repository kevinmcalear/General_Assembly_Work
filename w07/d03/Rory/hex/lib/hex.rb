class Hexadecimal

  def self.to_decimal(hex_number)
    hex_array = hex_number.split('').reverse
    dec_number =[]
    hex_array.each_with_index do |value, index|
      dec_number << (16 ** index) * value.to_i(base=16)
    end
    dec_number.reduce(:+)
  end

end