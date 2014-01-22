#Movie
# - title
# - year

class Movie
  def initialize(title, year)
    @title = title
    @year = year
  end

  def title
    return "Yuck yuck yuck: #{super}"
  end

  def year
    @year
  end
end

class Comedy < Movie
  def number_of_chuckles
    25
  end
end

#ScaryMovie
#- number_of_minutes_until_calm

class Scary < Movie
  def initialize(title, year, number_of_minutes_until_calm)
    super(title, year)
    @number_of_minutes_until_calm = number_of_minutes_until_calm
  end

  def number_of_minutes_until_calm
    return @number_of_minutes_until_calm
  end
end
#Comedy is a sibling of ScaryMovie



her = Movie.new("Her", 2013)

puts her.title


dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 147)

puts dumb_and_dumber.title
puts dumb_and_dumber.number_of_chuckles
puts dumb_and_dumber.inspect

puts her.number_of_chuckles

saw = Scary.new("Saw", 2004, 300_000)
saw.title
saw.inspect
saw.number_of_minutes_until_calm