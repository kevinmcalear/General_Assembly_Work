class Grammy

  @@grammy_list = []

  def initialize(year, category, name)
    @year = year
    @category = category
    @name = name

    @@grammy_list << self

  end

  def year
    return @year
  end

  def category
    return @category
  end

  def name
    return @name
  end

  def to_s
    return "#{name} won the GRAMMY for Best #{category} Album that was released in #{year}."
  end

  def self.all
    return @@grammy_list
  end

  def self.delete
    @@grammy_list = []
  end

end