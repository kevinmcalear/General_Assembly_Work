#Movie
# - title
# - year

class Movie
  def initialize(title, year)
    @title = title
    @year = year
  end

  def title
    return @title
  end

  def year
    return@year
  end
end

class Comedy < Movie
  def initialize(title, year, number_of_chuckles)
    super(title, year) #pulls parent class
    @number_of_chuckles = number_of_chuckles
  end

  def number_of_chuckles
    return @number_of_chuckles
  end

  # def title
  #   return "Yuck yuck yuck: #{super}"
  # end
end


# Scary Movie
#  - number of minutes until calm

class Scary < Movie
  def initialize(title, year, number_of_minutes_until_calm)
    super(title, year)
    @number_of_minutes_until_calm = number_of_minutes_until_calm
  end

    def number_of_minutes_until_calm
      reutrn @number_of_minutes_until_calm
    end
  end


her = Comedy.new("Her", 2013)
puts her.title
puts her.number_of_chuckles

dumb_and_dumber = Comedy.new("Dumb and Dumber", 1994, 147)

puts dumb_and_dumber.title
puts dumb_and_dumber.number_of_chuckles
puts dumb_and_dumber.inspect

return_of_the_lambs = Scary.new("Return of the Lambs", "2004", "300")
puts return_of_the_lambs.title
puts return_of_the_lambs.inspect
puts return_of_the_lambs.number_of_minutes_until_calm