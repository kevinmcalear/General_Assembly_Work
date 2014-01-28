class Grammy

  @@grammys = []

def initialize(year, category, winner)
  @year = year
  @category = category
  @winner = winner

  @@grammys << self
end

def year
  return @year
end

def to_s
  return "#{@year} #{@category} #{@winner}"
end

def category
  return @category
end

def winner 
  return @winner
end 

def self.delete_grammy(index)
  @@grammys.delete_at(index)
end

def self.all 
  return @@grammys
end

def self.clear
  @@grammys = []
end

def self.save_all(path)
  f = File.new(path, "w+")

  @@grammys.each do |grammy| 
    f.puts "#{grammy.year}||#{grammy.category}||#{grammy.winner}"
  end
  f.close
end

def self.read_all(path)
  f = File.new(path, "a+")

  f.each do |line|
    line_array = line.split("\t")
    Grammy.new(line_array[0], line_array[1], line_array[2])
  end

  f.close
end




end












