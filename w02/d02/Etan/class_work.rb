class Movie

  def initialize(title, year)
    @title = title
    @year = year
  end

  def title
    return @title
  end

  def year 
    return @year
  end
end

class Comedy < Movie
  def number_of_chuckles
    25
  end
end 

class ScaryMovie < Movie
  def initialize(title, year, number_of_minutes_until_calm)
    super(title)
    @number_of_minutes_until_calm = number_of_minutes_until_calm
  end

  def number_of_minutes_until_calm
    return @number_of_minutes_until_calm
  end
end