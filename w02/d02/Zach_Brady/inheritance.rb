# First we start with a broad category. 

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

# Now we define a more specific class that will inherit from Movie. 
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

class Documentary < Movie
  def initialize(title, year, percentage_narration)
    super(title, year)
    @percentage_narration = percentage_narration
  end

  def percentage_narration 
    return @percentage_narration
  end
end

her = Movie.new("her", 2013)

puts her.title

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 156)

puts dumb_and_dumber.title
puts dumb_and_dumber.number_of_chuckles

puts her.number_of_chuckles

