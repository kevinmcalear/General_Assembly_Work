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


class Comedy < Movie #means that Comedy will inheriet from Movie class
  def initialize(title, year, number_of_chuckles)
    super(title, year)
    @number_of_chuckles = number_of_chuckles
  end


  def number_of_chuckles
    return @number_of_chuckles
  end

  def title    #Overwrites/Overloads the title method upstream
    return "Yuck, yuck, yuck @ #{super}!"   #super calls the method def of a parent class, but within the context of this instance
  end

end

class Scary < Movie
  def initialize(title, year, min_until_calm)
    super(title, year)
    @min_until_calm = min_until_calm
  end

  def min_until_calm
    return @min_until_calm
  end


  end


her = Movie.new("Her", 2013)

puts her.title

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 147)

puts dumb_and_dumber.title
puts dumb_and_dumber.number_of_chuckles
# puts her.number_of_chuckles   #=>would throw an error bc num_chuckles is defined in the Comedy class and not in Movie

saw = Scary.new("Saw", 2004, 190)

puts saw.min_until_calm





