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
    return @winner.capitalize
  end

  def to_s
    return "#{@winner.capitalize} won #{@category} in #{@year}."
  end

  def self.list
    return @@grammys
  end

  def self.clear
    return @@grammys = []
  end

  def self.delete_grammy(index_number)
    @@grammys.delete_at(index_number)
    return @@grammys
  end

  def self.save_list(file)
    f = File.open(file, "w+")
    @@grammys.each do |grammy| 
      f.puts "#{grammy.year} | #{grammy.category} | #{grammy.winner}"
    end
    f.close
  end
  def self.read_list(file)
    f = File.open(file, "a+")
      f.each do |line|
        grammy_line = line.split(" | ")
        Grammy.new(grammy_line[0], grammy_line[1], grammy_line[2])
      end
    f.close
  end


end






















