class Hexidecimal

  def to_decimal(hex_input)
    hex_input = hex_input.to_s
    convert = hex_input.to_i(16).to_s(10)
    return convert.to_i
  end

end