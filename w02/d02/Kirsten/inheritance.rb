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
    return "Yuck yuck yuck #{super}" # Can overwrite(overload) behavior. Will take most specific. 
  end
end

class Scary < Movie
  def initialize(title, year, number_of_minutes_until_calm)
    super(title, year)
    @number_of_minutes_until_calm = number_of_minutes_until_calm
  end
  def number_of_minutes_until_calm
    return @number_of_minutes_until_calm
  end
end


her = Movie.new("Her",2013)
puts her.title

dumb_and_dumber = Comedy.new("Dumb and Dumber",1994,25)

puts dumb_and_dumber.title
puts dumb_and_dumber.number_of_chuckles

the_conjuring = Scary.new("The Conjuring", 2013, 12345)
puts the_conjuring.number_of_minutes_until_calm

# puts her.number_of_chuckles # this will give an error, there is no number_of_chuckles for Movie 


