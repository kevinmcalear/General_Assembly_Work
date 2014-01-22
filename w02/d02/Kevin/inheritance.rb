class Movie
  def initialize(title, year)
    @title = title
    @year = year
  end

  def title
    return @title
  end

  def year
    @year
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

  def  title
    return "Yuck yuck yuck: #{ super }"
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
puts her.title + ", " + her.year.to_s

dumb_and_dumber = Comedy.new("Dumb And Dumber", 1994, 147)
puts dumb_and_dumber.title + ", " + dumb_and_dumber.year.to_s

puts dumb_and_dumber.number_of_chuckles



the_hills_have_eyes = Scary.new("The Hills Have Eyes", 2006, 30)

puts the_hills_have_eyes.title + ", " + the_hills_have_eyes.year.to_s

puts the_hills_have_eyes.number_of_minutes_until_calm




