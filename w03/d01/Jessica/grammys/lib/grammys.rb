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

  def category
    return @category
  end

def winner
  return @winner
end

def to_s
  return "The winner for the #{category} category was #{winner} in #{year}."
end

def self.save_all(path)
  f = File.open(path, "w+")

  @@grammys.each do |grammys|
      f.puts "#{grammys.year}||#{grammys.category}||#{grammys.winner}"
    end
  f.close
end

def self.read_all(path)
    f = File.new(path,"a+")
    f.each do |line|
      line_array = line.split("||")
      Grammy.new(line_array[0],line_array[1],line_array[2])
    end
    f.close
  end

def self.all
  return @@grammys
end

def self.delete_at(position)
  return @@grammys.delete_at(position)
end

def self.clear
  return @@grammys = []
end


end