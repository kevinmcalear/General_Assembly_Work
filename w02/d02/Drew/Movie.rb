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

#inherit from movie 

class Comedy < Movie 

  def initialize(title, year, number_of_chuckles)
    super(title, year)
    @number_of_chuckles = number_of_chuckles
  end

  def number_of_chuckles
    return @number_of_chuckles
  end

  #overwrite/overload methods
  def title
    return "yuck yuck yuck #{super}"
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



her = Movie.new("Her", 2013)
puts her.title

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 14)
puts dumb_and_dumber.number_of_chuckles
saw_2 = Scary.new("Saw 2", 2002, 25)
puts saw_2.title 
puts saw_2.number_of_minutes_until_calm





