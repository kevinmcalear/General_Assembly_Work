class Grammy

  FILE_PATH = "grammys.csv"
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
    return "#{self.year} #{self.category} went to #{self.winner}"
  end

  def self.clear
    @@grammys = []
  end

  def self.all
    return @@grammys
  end

  def self.add
    puts
    puts "What is the year?"
    year = gets.chomp.to_i
    puts "What is the category?"
    category = gets.chomp
    puts "Who won?"
    winner = gets.chomp
    
    Grammy.new(year, category, winner)
    Grammy.save(FILE_PATH)
  end

  def self.delete(index)
    @@grammys.delete_at(index)
    Grammy.save(FILE_PATH)
  end

  def self.save(filename)
    f = File.open(filename, "w+")
    @@grammys.each do |grammy|
      f.puts "#{grammy.year}|#{grammy.category}|#{grammy.winner}"
    end
    f.close
  end

  def self.read(filename)
    f = File.open(filename, "r")
    f.each do |line|
      attributes = line.split("|")
      Grammy.new(attributes[0], attributes[1], attributes[2])
    end
    f.close
  end
end


