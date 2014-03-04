class Hexadecimal

  def hex(decimal)
    hex = decimal.to_s(16)
    return hex
  end

  def decimal(hex)
    decimal = hex.to_i(16)
    return decimal
  end

end