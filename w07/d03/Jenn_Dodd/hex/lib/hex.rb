class Hexidecimal
  def initialize(number)
    @number = number.to_s.split('').reverse
  end

  def number
    @number
  end

  def to_decimal
    converted_nums = @number.each_with_index do |num, index|
      num.to_i(base=16) * (16**index)
    end
    converted_nums.reduce(:+)
  end



end