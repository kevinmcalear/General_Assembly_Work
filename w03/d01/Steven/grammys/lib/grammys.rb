class Grammy

  @@grammys = []


  def initialize(category, year, winner)
  @category = category
  @year = year
  @winner = winner

  @@grammys << self
  end

  def category
    return @category
  end

  def year
    return @year
  end

  def winner
    return @winner
  end

  def to_s
    return "#{@category}, #{@year}, #{@winner}"
  end

  def self.all
    return @@grammys
  end

  def self.clear
    @@grammys = []
  end

  def self.delete_at(grammy_index)
    @@grammys.delete_at(grammy_index)
  end

  def self.save_all(path)
    f = File.new(path,"w+")

    @@grammys.each do |grammy|
      f.puts "#{grammy.category}, #{grammy.year}, #{grammy.winner}"
    end

    f.close
  end

  def self.read_all(path)
    f = File.new(path, "a+")
    f.each do |line|
      line_array = line.split("||")
      Grammy.new(line_array[0],line_array[1],line_array[2])
    end

    f.close

  end



  #end




end
