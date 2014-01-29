class Grammy

  @@grammys = []

  def initialize(year,category,winner)
    @year = year
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
    return "#{year}|#{category}|#{winner}"
  end

  def self.clear
    @@grammys = []
  end

  def self.save(file)
    f = File.new(file, "a+")
    @@grammys.each do |gram|
      f.puts gram.to_s
    end
    f.close
  end

  def self.list
    list = ""
    @@grammys.each do |gram|
      list += gram.to_s + "\n"
    end
    list
  end

  def self.grammys
    return @@grammys
  end

  def self.grammys=(array)
    @@grammys = array
  end
end