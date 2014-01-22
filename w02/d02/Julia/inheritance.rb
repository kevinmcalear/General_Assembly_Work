#Movie
# - Title
# - Year

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

her = Movie.new("Her", 2013)
puts her.title

#We want to add a method that lets us know how many chuckles you'll get from
#the movie – in a specific genre, Comedy

#Class Comedy is going to inherit from Movie
#here we are intantiating a new instance of the comedy class
#we're not instantiating a new instance of the Movie class
#There's one object being instantiated, but there's a relationship
#between them

# we want a method that says number of chuckles, let's say all comedies
# yield 25 chuckles
class Comedy < Movie
  #this is a way to add number of chuckles to your initialize method
  # you can inherit title & year from the parent method Movie
  def initialize(title, year, number_of_chuckles)
    super(title, year)
    @number_of_chuckles = number_of_chuckles
  end

  def number_of_chuckles
   return @number_of_chuckles
  end

  #we could overwrite the title method
  #every comedy would return 'Blah, blah, yay!' when you call .title on a Comedy
  #we can also overload methods
  def title
    return "Blah, blah, yay!"
  end

  #super calls the method definition of the parent class, but still within the context
  #of this instance
  #here super = the @title from the parent class
  #super will only work if you name your method the same as what it's called
  #in the parent class
  def title
    return "Yuck, yuck, yuck: #{super}"
  end
end


dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 200)
puts dumb_and_dumber.title
puts dumb_and_dumber.number_of_chuckles

#Create Scary Movie Class
# Number of minutes until calm
class Scary < Movie
  def initialize(title, year, minutes_until_calm)
    super(title, year)
    @minutes_until_calm = minutes_until_calm
  end

  def minutes_until_calm
    return @minutes_until_calm
  end
end

saw = Scary.new("Saw", 2004, 2000)
puts saw.minutes_until_calm
puts saw.title

