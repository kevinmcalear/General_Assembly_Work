class Grammy
  @@grammys= []

  def initialize(year,category,winner)
    @year = year
    @category = category
    @winner = winner

    @@grammys << self
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

  def self.clear
    return @@grammys = []
  end 

  def self.save_all(path)
    f = File.open(path,"w+")

    @@grammys.each {|grammy| 
      f.puts "#{grammy.year}|#{grammy.category}|#{grammy.winner}"
    }

    f.close    
  end 

  def self.read_all(path)
    f = File.open(path,"a+")
    content = f.read
    f.close

  
  end

end 
