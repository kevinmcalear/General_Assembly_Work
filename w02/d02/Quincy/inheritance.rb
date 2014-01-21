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

  def title
    return "Blah blah yay!"
  end
end

her = Movie.new("Her", 2013)

puts her.title

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1998)

puts dumb_and_dumber.title
puts dumb_and_dumber.number_of_chuckles
puts her.number_of_chuckles