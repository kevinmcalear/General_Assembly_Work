class Movie
	
	def initialize(title,year)
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
	def initialize(title,year,number_of_chuckles)
		super(title,year)
		@number_of_chuckles = number_of_chuckles
	end
	def number_of_chuckles
		return @number_of_chuckles
	end
	def title
		return "Yuck! #{super}"
	end
	def year
		return super
	end
end

class Scary < Movie
	def initialize(title,year,num_of_minutes_until_calm)
		super(title,year)
		@num_of_minutes_until_calm = num_of_minutes_until_calm
	end
	def num_of_minutes_until_calm
		return @num_of_minutes_until_calm
	end
end

dand = Comedy.new("Dumb and Dumber", 2013, 25)
puts dand.year
puts dand.title
mov = Movie.new("name",2013)
puts mov.title
scary = Scary.new("Scary Movie 3",1999,25)
puts scary.title 
puts scary.year
puts scary.num_of_minutes_until_calm