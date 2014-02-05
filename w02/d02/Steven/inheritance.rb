# Movie
#   title
#   year

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

#num of minutes until calm

class ScaryMovie < Movie
  def initialize(title, year, num_of_minutes_until_calm)
    super(title, year)
    @num_of_minutes_until_calm = num_of_minutes_until_calm
  end


  def num_of_minutes_until_calm
    return @num_of_minutes_until_calm
  end

end



her = Movie.new("Her", 2013)


puts her.title

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 147)

puts dumb_and_dumber.title
puts dumb_and_dumber.number_of_chuckles

# puts her.number_of_chuckles

halloween = ScaryMovie.new("Halloween", 1982, 10)

puts halloween.num_of_minutes_until_calm


  



