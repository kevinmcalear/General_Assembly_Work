class Grammys

  @@grammys_list = []

  def initialize(year, category, winner)
    @year = year.to_i
    @category = category
    @winner = winner

    @@grammys_list << self
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
    "Grammy-- Year: #{year}, Category: #{category}, Winner: #{winner}"
  end

  def self.all
    return @@grammys_list
  end

  def self.clear
    @@grammys_list = []
  end

  def self.save_all(path)
    f = File.new(path, "w+")

    @@grammys_list.each do |grammy|
      f.puts "#{grammy.year}|#{grammy.category}|#{grammy.winner}"
    end

    f.close

  end

  def self.read_all(path)
    f = File.new(path, "a+")

    f.each do|line|
      line_array = line.split("|")
      Grammys.new(line_array[0], line_array[1], line_array[3])
  end
  f.close
  end

  def self.index
    @@grammys_list.each{|grammy| puts @@grammys_list.index(grammy)}
  end

  end

end
