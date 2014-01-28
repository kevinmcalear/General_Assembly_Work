class Grammys
  @@grammys_list = []

  def initialize(year, category, winner)
    @year = year
    @category = category
    @winner = winner

    @@grammys_list << self
  end

  def year 
    return @year
  end

  def category
    return @category
  end

  def winner
    return @winner
  end

  def self.list
    return @@grammys_list
  end

  def to_s
    return "Year: #{@year}, Category: #{@category}, Winner: #{@winner}"
  end

  def self.clear
    return @@grammys_list = []
  end

  def self.remove(grammy)
    grammy_index = @@grammys_list.index(grammy)
    return @@grammys_list.delete_at(grammy_index)
  end



end