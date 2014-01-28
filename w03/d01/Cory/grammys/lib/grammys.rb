class Grammy

  @@grammys = []

  def initialize(year, category, winner)
    @year = year
    @category = category
    @winner = winner
    @@grammys.push(self)
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

  def self.all
    return @@grammys
  end

  def self.save_all(path)
      f = File.new(path,"w+")

    @@grammys.each do |grammy|
      f.puts "#{grammy.year}\|#{grammy.category}\|#{grammy.winner}"
    end

    f.close
  end

  def self.read_all(arg)
    
  end

  def self.clear
    return @@grammys = []
  end

  def to_s
    return "Grammy goes to: #{year}, #{category}, #{winner}"
  end

end