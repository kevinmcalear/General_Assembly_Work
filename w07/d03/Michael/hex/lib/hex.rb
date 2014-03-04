require 'pry'
class Hexadecimal

  def to_decimal(hex)
    hex.to_s
    return hex.to_i(16).to_s(10)
  end 

  def to_hex(decimal)
    decimal.to_s
    return decimal.to_i(10).to_s(16)
  end 

end 

