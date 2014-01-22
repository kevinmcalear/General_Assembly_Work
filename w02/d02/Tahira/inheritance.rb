#Movie

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
  def initialize(title, year, number_of_chuckles)
    @number_of_chuckles = number_of_chuckles
  end

  def number_of_chuckles
    25
  end

  def title
    return "Yuck #{super}"
  end
end

class Scary < Movie
  def initialize(title, year, number_of_minutes_til_calm)
    super(title, year)
    @number_of_minites_til_calm
  end
end

her = Movie.new("Her", 2013)
dumb_and_dumber = Comedy.new("Dumb and Dumber", 1995, 147)

puts her.title
puts dumb_and_dumber.number_of_chuckles

scream = Scary.new("Scream", 1999, 35)
puts scream.title