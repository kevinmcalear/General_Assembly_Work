class Convert

  def convert_decimal_to_hex(number)
    change_num = number.to_s
    change_num.to_i(10).to_s(16)
  end

  def convert_hex_to_decimal(number)
    number.to_i(16).to_s(10)
  end


end