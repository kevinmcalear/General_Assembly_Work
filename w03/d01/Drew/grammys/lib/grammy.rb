class Grammys

  @@grammys = []

  def initialize(year, category, winner)
    @year = year
    @category = category
    @winner = winner

    @@grammys << self

  end

  def year
    @year
  end

  def category
    @category
  end

  def winner
    @winner
  end

  def to_s
    return "The #{@year} winner of #{@category} was #{@winner}"
  end

  def self.clear
    @@grammys = []
  end

  def self.all
    return @@grammys
  end

  def delete_grammy 
    grammys = Grammys.all
    puts grammys.each_with_index {|val, index| puts "#{index} => #{val}"}
  end

end