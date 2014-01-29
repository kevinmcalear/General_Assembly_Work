class Grammy

  @@grammy_list = []

  def initialize(year, category, winner)
    @year = year
    @category = category
    @winner = winner
    @@grammy_list << self

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
    return "Year:#{year}, Category:#{category}, Winner:#{winner}."
  end

  def self.list
    return @@grammy_list
  end

  def self.clear
    @@grammy_list = []
  end


  def self.save_info(path)
    f = File.new(path, "w+")
      @@grammy_list.each do |artist|
        f.puts "#{artist.year}|#{artist.category}|#{artist.winner}"
      end
    f.close
  end

  def self.read_info(path)
    f = File.new(path,"a+")

    f.each do |line|
      gram_array = line.split(",")
      Grammy.new(gram_array[0],gram_array[1],gram_array[2])
    end

    f.close
  end

  def self.delete(index)
    @@grammy_list.delete_at(index)
  end


end