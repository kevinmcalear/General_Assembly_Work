require "pry"
class Grammy

  @@Grammys = []

  def initialize(year, category, winner)
    @year = year
    @category = category
    @winner = winner
    @@Grammys << self
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
    return "The #{self.year} award for #{self.category} was won by #{self.winner}"
  end

  def self.all

    return @@Grammys

  end

  def self.clear

    return @@Grammys = []

  end

  def self.save(file)
    f = File.new(file, "w+")
    @@Grammys.each do |grammy|
      f.puts "#{grammy.year}|#{grammy.category}|#{grammy.winner}"
    end
    f.close
    self.clear
  end

  def self.load(file)
    f = File.open(file)
    f.each do |award|
      award_array = award.split("|")
      Grammy.new(award_array[0],award_array[1],award_array[2])
    end
    f.close
  end

  def self.delete_at(position)
    @@Grammys.delete_at(position)
  end


  end

