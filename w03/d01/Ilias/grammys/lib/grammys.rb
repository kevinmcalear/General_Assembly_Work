require "pry"

class Grammys

@@results = []

  def initialize(year, category, winner)
    @year = year.to_i
    @category = category
    @winner = winner
    @@results << self
  end

  def self.print
     @@results
  end

  def self.read(path)
    f = File.open(path, "a+")
      content = f.read
    f.close
      content_array = content.split("\n")
      new_entry = content_array.each { |item| item. split("|")}
    Grammys.new(new_entry[0], new_entry[1], new_entry[2])
    return content_array
  end

  def self.clear
    @@results = []
  end

  def self.save(path)
    f = File.open(path, "w+")
      @@results.each { |result| f.puts "#{result.year} | #{result.category} | #{result.winner}" }
    f.close
  end

  def self.delete_at(position)
    @@results.delete_at(position)
  end

  def to_s
    return "The choice for #{year} in #{category} is #{winner}!"
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

end