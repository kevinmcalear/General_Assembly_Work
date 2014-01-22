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
  def initialize(title, year, num_of_chuckles)
    super(title, year)
    @num_of_chuckles = num_of_chuckles
  end
  def num_of_chuckles
    return @num_of_chuckles
  end
  def title
  return "Yuck yuck yuck: #{super}"
end
end

class ScaryMovie < Movie
  def initialize(title, year, number_of_minutes_until_calm)
    super(title, year)
    @number_of_minutes_until_calm = number_of_minutes_until_calm
  end
  def number_of_minutes_until_calm
   return @number_of_minutes_until_calm
  end
end



her = Movie.new("Her", 2013)

puts her.title

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 147)
the_ring = ScaryMovie.new("the ring", 2004, 45)

puts dumb_and_dumber.title
puts dumb_and_dumber.num_of_chuckles
puts the_ring.number_of_minutes_until_calm
#puts dumb_and_dumber.inspect
#puts her.num_of_chuckles