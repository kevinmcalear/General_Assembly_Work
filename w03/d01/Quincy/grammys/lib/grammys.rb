class Grammy
  def initialize(grammy_winner, category, year)
    @grammy_winner = grammy_winner
    @category = category
    @year = year

    @@grammys << self
  end

  def grammy_winner
    return @grammy_winner
  end

  def category
    return @category
  end

  def year
    return @year
  end

  def to_s
    return "Grammy winner #{@grammy_winner}, for the category of #{@category} this year of #{@year}!"
  end

  def self.all
    return @@grammys
  end

  def self.clear
    @@grammys = []
  end

  def self.save_all(path)
    File.new(path,"w+")

    f.each do |line|
end