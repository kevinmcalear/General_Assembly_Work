class Grammy
@@list = []
 
 def initialize(year, category, winner)
    @year = year
    @category = category
    @winner = winner
    @@list << self
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
    return @@list
  end

  def print
    return "📀  GRAMMYS SO FAR: #{@winner}, #{@category}, #{@year} 📀"
  end

  def self.clear
    return @@list = []
  end

  def self.delete(index)
    return @@list.delete_at(index)
  end

  def self.save_list(filename)
    f = File.new(filename,"w+")
    @@list.each { | grammy | f.puts "#{grammy.winner}|#{grammy.category}|#{grammy.year}" }
    f.close
  end

  def self.read_list(filename)
    f = File.new(filename,"a+")

    f.each do | grammy |
      grammy_info = grammy.split("|")
      Grammy.new(grammy_info[2].chomp, grammy_info[1].chomp, grammy_info[0].chomp)
    end

    f.close
  end

end