class Hexidecimal
  def conversion
    @hex = [
      "0","1","2","3","4",
      "5","6","7","8","9",
      "A","B","C","D","E","F"
    ]
    # i = 1
    # j = 0
    # 10.times do
    #   @hex[:i] = i
    #   i += 1
    # end
    # 6.times do
    #   @hex[:i] = hexalpha(j)
    #   i += 1
    #   j += 1
    # end
  end


  def to_decimal(hexi)
    hexi_array = hexi.split("")
    hexi_array.each do |decimal|
      dec_array = []
      dec_array.push(hexi_array.find_index(decimal))
    end
    decimal = dec_array.join
  end
end

