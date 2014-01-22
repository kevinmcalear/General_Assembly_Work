#movie

class Movie
attr_reader :title, :year

  def initialize(title, year)
    @title = title
    @year = year
  end
end

class Comedy < Movie
  def initialize(title, year, number_of_chuckles)
    super title, year
    @number_of_chuckles = number_of_chuckles
  end
  def number_of_chuckles
    25
  end

  def title
    "Comedy: #{super}"
  end
end

class ScaryMovie < Movie
  attr_reader :number_of_minutes_until_calm
  def initialize (title, year, number_of_minutes_until_calm)
    super title, year
    @number_of_minutes_until_calm = number_of_minutes_until_calm
  end
end


scream = ScaryMovie.new("Scream", 1993, 10)

p scream

# her = Movie.new("Her", 2013)



# dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 20)

# puts dumb_and_dumber.title

# p dumb_and_dumber