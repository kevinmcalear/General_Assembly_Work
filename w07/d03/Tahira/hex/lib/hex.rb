
class Hex
  def self.to_decimal(hex)
    count = hex.length - 1
    dec = 0
    hex.each_char do |n|
      case n
      when 'a'
        num = 10
      when 'b'
        num = 11
      when 'c'
        num = 12
      when 'd'
        num = 13
      when 'e'
        num = 14
      when 'f'
        num = 15
      else
        num = n.to_i
      end
      dec += num * (16 ** count)
      count = count - 1 
    end
    return dec
  end

  def self.to_hex(decimal)
    hex = decimal.to_i(16)
    return hex
  end
end
