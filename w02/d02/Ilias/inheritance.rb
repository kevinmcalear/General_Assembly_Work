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
    super(title, year) #forwarding arguments
   @number_of_chuckles = number_of_chuckles
  end

  def number_of_chuckles
    return @number_of_chuckles
  end

  def title #overload method
    return "This comedy is titled: #{super}"
  end

end

class Scary < Movie
  
  def initialize(title, year, minutes_til_calm)
    super(title, year)
    @minutes_til_calm = minutes_til_calm
  end

  def minutes_til_calm
    return @minutes_til_calm
  end

end


her = Movie.new("Her", 2013)
puts her.title

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 94)
puts dumb_and_dumber.title
puts dumb_and_dumber.number_of_chuckles

paranormal_activity = Scary.new("Paranormal Activity", 2010, 120)
puts paranormal_activity.minutes_til_calm

