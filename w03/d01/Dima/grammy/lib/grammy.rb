require 'pry'
class Grammy

@@winners = []

  def initialize(year, category, winner)
    @year = year
    @category = category
    @winner = winner

    @@winners << self
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
    return "#{winner} won Grammy in #{category} category in #{year.to_s}"
  end

  def self.all_winners
   return @@winners
  end

  def self.clear
    @@winners = []
  end

  def self.list #method that I was most curios about if it's correct and test for it
    #@@winners.each_with_index {|key, val| return "#{val} => #{key.winner}"}
    #!!!!!!!!!!!!! REDO THIS METHOD TO READ FROM FILE

    f = File.open("grammy.csv", "r")

    f.each do |line|
      puts "#{f.lineno}: #{line.split(" | ")[2]}"
    end

    f.close
  end

  def delete(key)
    @@winners.delete(key)
  end

  def self.save_winners(path)
     f = File.new(path, "w+")
     @@winners.each do |winner|
      f.puts "#{winner.year} | #{winner.category} | #{winner.winner}"
    end

    f.close
  end

  def self.read_winners(path)
    f = File.new(path,"a+")

    f.each do |line|
      line_array = line.split(" | ") 
      Grammy.new(line_array[0], line_array[1], line_array[2])
    end

    f.close
  end
end