class Hexadecimal
  def initialize(hex_num)
    @hex_num = hex_num.to_s
  end

  def to_decimal  
    @hex_num.to_i(16)
  end
end