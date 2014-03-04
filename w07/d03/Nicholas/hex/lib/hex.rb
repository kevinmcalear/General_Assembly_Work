class Hexidecimal

  def initialize(number)
    @number = number.to_s
  end

  def to_decimal
    number = @number.split("")
    count = 0 
    final = []
    while number.count > 0 
      final << number.last.to_i * (16 ** count)
      number.pop
      count += 1
    end
    final = final.map {|num| num.to_i}
    final.reduce {|sum, num| sum + num}
  end
  
end

