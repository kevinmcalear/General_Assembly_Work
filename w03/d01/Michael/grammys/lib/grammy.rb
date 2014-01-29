class Grammy
@@grammys = []

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
    f = File.open(path,"a+")

    @@grammys.each do |grammy|
      f.puts "#{grammy.year}\|#{grammy.category}\|#{grammy.winner}"
    end  
    
    f.close
  end

  def self.delete_all(path)
    f = File.open(path,"w+") 
    f.close
  end 

  def self.view_all(path)
    f = File.open(path,"r+")
    content = f.read
    f.close
    content = content.split("\n")
    
    record_hash = content.map{ |array| {:index=> content.index(array),:details=>array}} 
    
    binding.pry

    return list

  end

end