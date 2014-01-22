#Movie Class
# - title
# - year
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
    super(title, year)
    @number_of_chuckles = number_of_chuckles
  end

  def number_of_chuckles
    return @number_of_chuckles
  end

  def title 
    return "Yuck yuck yuck: #{super}"
  end
end

# Scary Movie class
# number of minutes until calm

class Scary < Movie
  def initialize(title, year, mins_until_calm)
    super(title, year)
    @mins_until_calm = mins_until_calm
  end

  def mins_until_calm
    return @mins_until_calm
  end
end


her = Movie.new("Her", 2013)

puts her.title

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 20)

puts dumb_and_dumber.title
puts dumb_and_dumber.number_of_chuckles

saw = Scary.new("Saw", 2004, 300)

puts saw.title
puts saw.mins_until_calm


