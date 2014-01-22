# require "pry"
# use binding.pry to troubleshoot

# to define classes in a different file:
# mkdir models (this is a convention)
# touch building.rb 
# require_relative "models/building"
# relative because it is relative in the path

# Classical Inheritence. It's tempting to see every problem as an inheritence problem but they are not.
# Inheritence moves from general to specific
# Movie -> Comedy and Horror
# You can add and override behavior that's inherited 

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
    25
  end
  def title
    #super calls the method definition of a parent class but within the context of the instance 
    return "yuck yuck yuck #{super}"
  end
end

# ScaryMovie
# Number of minutes until calm, passed in during initialization 

class ScaryMovie < Movie
  def initialize(title, year, minutes_until_calm)
    super(title, year)
    @minutes_until_calm = minutes_until_calm
  end
  def minutes_until_calm
    puts "After watching this movie it will take you #{minutes_until_calm} minutes to calm down."
    return @minutes_until_calm
  end
end

her = Movie.new("Her", 2014)
puts her.title

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 234234)
puts dumb_and_dumber.number_of_chuckles
puts dumb_and_dumber.title

jaws = ScaryMovie.new("Jaws", 1970, 400)
















