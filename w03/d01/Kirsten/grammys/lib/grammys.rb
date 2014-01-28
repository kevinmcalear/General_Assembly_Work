class Grammy
  @@grammys_archive = []

  def initialize(year, category, winner) 
    @year = year
    @category = category
    @winner = winner

    @@grammys_archive << self
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
    return "Entry: #{@year} #{@category} #{@winner}"
  end

  def self.all
    return @@grammys_archive
  end

  def self.clear
    @@grammys_archive = []
  end


  def self.save_all(path)
    f = File.new(path,"w+")

    @@grammys_archive.each do |grammy|
      f.puts "#{grammy.year}|#{grammy.category}|#{grammy.winner}"
    end

    f.close
  end

  def self.delete_entry(path,index)
    f = File.new(path,"a+")
    @@grammys_archive.delete_at(index)
    f.close
  end

  def self.list_all(path)
    f= File.new(path, "a+")

    f.each_with_index do |line|
      line_array = line.split("\n")
      Grammy.new(line_array[0],line_array[1],line_array[2])
    end

    f.close
  end



end