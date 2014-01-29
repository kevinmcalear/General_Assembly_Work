# Movie
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

  class Comedy < Movie #Class Comedy Inherits from Movie

      def initialize(title, year, number_of_chuckles ) #argument ordered dependency - take a look at KEYWORD ARGUMENTS vs NAMED ARGUMENTS (order matters)
        super(title,year) #calls the parent class initialie method with the arguments
        @number_of_chuckles = number_of_chuckles
      end

      def number_of_chuckles
          return @number_of_chuckles
      end

      def title #this method overwrites the title method defined in the parent class (also called overloading a method)
        return "Yuck yuck yuck: #{super}" #super returns the method on the parent class
      end
  end

her = Movie.new("Her", 2013) #create a new Comedy object which inherits characteristics of Movie

puts her.title

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 147)

puts dumb_and_dumber.title
puts dumb_and_dumber.number_of_chuckles #returns number of chuckles 
#puts her.number_of_chuckles # returns an error

# create a scary moviee class
# number_of_minutes_until_calm gets passed in to initialization

class Horror < Movie

  def initialize(title, year, number_of_minutes_until_calm)
    super(title, year)
    @number_of_minutes_until_calm = number_of_minutes_until_calm
  end

  def number_of_minutes_until_calm
    return @number_of_minutes_until_calm 
  end

  end

  scream = Horror.new("Scream", 1996, 120)
  puts scream.number_of_minutes_until_calm







































  