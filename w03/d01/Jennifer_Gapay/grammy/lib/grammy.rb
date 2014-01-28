class Grammy

  @@grammy = []

def initialize(name, year, category, winner)
  @name = name
  @year = year
  @category = category
  @winner = winner
  @@grammy << self
end

def name
  return @name
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
    return "Grammy Nominees: #{@name}, #{@year}, #{@category}, #{@winner}"
  end

  def self.all
    return @@grammy
  end

  def self.clear
    return @@grammy = []
  end

  def self.save_all(path)
    f = File.new(path, "w+")

    @@grammy.each do |grammy|
      f.puts "#{grammy.name}\t#{grammy.year}\t#{grammy.category}\t#{grammy.winner}"
    end

    f.close
  end

def self.read_all(path)
  f = File.new(path,"a+")

  f.each do |line|
    line_array = line.split("\t")
    Grammy.new(line_array[0],line_array[1],line_array[2],line_array[3])
  end

  f.close
end


end