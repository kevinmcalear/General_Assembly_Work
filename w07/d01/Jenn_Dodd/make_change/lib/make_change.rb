class Changer
  def initialize(change)
    @change = change
  end

  def quarters 
    (@change/25).floor
  end

  def quarter_remains
    @after_quarter = @change%25
  end

  def dimes
    quarter_remains
    (@after_quarter/10).floor
  end

  def dime_remains
    quarter_remains
    @after_dime = @after_quarter%10
  end

  def nickels
    quarter_remains
    dime_remains
    (@after_dime/5).floor
  end

  def pennies
    quarter_remains
    dime_remains
    @after_dime%5
  end

  def change 
    "Quarters: #{quarters}, Dimes: #{dimes}, Nickels: #{nickels}, Pennies: #{pennies}"
  end
end

puts Changer.new(93).change