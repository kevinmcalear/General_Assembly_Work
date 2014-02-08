## Inheritance
## Create a movie class, set title and year at time of instantiation. 

class Movie
  def initialize (title, year)
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
# ##Can overwrite or overload methods. 
#   def title    
#     return "Blah blah yay!"
#   end 
##super calls the parent definition of the method.  
  def title    
    return "Yuck yuck yuck #{super}"
  end 
end 

##Create Scary Movie class.  Add an attrib for "Number of minutes to calm"
class Scary < Movie
  def initialize (title, year, number_of_minutes_to_calm)
    super(title, year)
    @number_of_minutes_to_calm = number_of_minutes_to_calm
  end 

  def number_of_minutes_to_calm
    return @number_of_minutes_to_calm
  end

end 

her = Movie.new("Her", 2013)
puts her.title

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 147)
puts dumb_and_dumber.title
puts dumb_and_dumber.number_of_chuckles
#puts her.number_of_chuckles

saw = Scary.new("Saw", 2004, 120)
puts saw.title
puts saw.year
puts saw.number_of_minutes_to_calm


