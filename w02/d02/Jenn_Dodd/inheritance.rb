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
    return "Yuck yuck yuck: #{super}"
  end
end

class Horror < Movie
  def initialize(title, year, number_of_minutes_till_calm)
    super(title, year)
    @number_of_minutes_till_calm = number_of_minutes_till_calm
  end
  def number_of_minutes_till_calm
    return @number_of_minutes_till_calm
  end
end

blow = Movie.new("Blow", 2002)

puts blow.title

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 147)

puts dumb_and_dumber.title

puts dumb_and_dumber.number_of_chuckles
puts dumb_and_dumber.inspect

saw = Horror.new("Saw", 2004, 40)

puts saw.title
puts saw.year
puts saw.number_of_minutes_till_calm

