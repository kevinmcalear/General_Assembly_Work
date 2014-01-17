class Songs

	attr_accessor :title, :artist, :genre

	def initialize(title, artist, genre)
		@title=title
		@artist=artist
		@genre=genre
	end


end


class Playlist

	def list
		@list
	end



end

rage = Songs.new("Testify", "Rage Against the machine", "Rap Metal")

# instance = the current object that's being worked on

class Playlist
	def initialize()  #initialize = 1st thing ruby looks 4 
		@songs = []	  # and puts default variables into
	end


	def add_song(song)
		self.songs().push(song)		#self is used to refer the instance
							#for an instance method within a class
	end

	def songs  				#this is a "putter". something that 
		return @songs   	#things outside the class can see
	end
end