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

  movie = Movie.new("Her", 2013)
  def number_of_chuckles
    25
  end
  
end

class Scary < Movie
  def initialize(title, year, minutes_until_calm)
    super(title, year)
    @minutes_until_calm = minutes_until_calm
  end

  def title
    return super
  end

  def year
    return super
  end

  def minutes_until_calm
    return @minutes_until_calm
  end
end

# dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994)

# puts dumb_and_dumber.title
# puts dumb_and_dumber.number_of_chuckles

saw = Scary.new("Saw", 2005, 1000000)
puts saw.title
puts saw.year
puts saw.minutes_until_calm