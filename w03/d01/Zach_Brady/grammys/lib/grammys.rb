class Grammys

@@grammys = [] 

  def initialize(year, category, winner)
    @year = year.to_i
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
    return "Category: #{category}, Year: #{year}, Winner: #{winner}"
  end

  def self.list_all_grammys
    return @@grammys
  end

  def self.clear
    @@grammys = []
  end

  def self.save_all(path)
    f = File.new(path, "w+")

    @@grammys.each do |grammy|
      f.puts "Category: #{grammy.category}, Year: #{grammy.year}, Winner: #{grammy.winner}"
    end

    f.close
  end

  def self.read_all(path)
    f = File.new(path, "a+")

    f.each do |line|
      line_array = line.split("\t")
      Grammys.new(line_array[0], line_array[1], line_array[2])
    end

    @@grammys.each do |grammy|
      f.puts "Category: #{grammy.category}, Year: #{grammy.year}, Winner: #{grammy.winner}"
    end

    f.close
  end
end