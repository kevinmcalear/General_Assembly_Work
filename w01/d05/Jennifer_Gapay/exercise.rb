# #Song
# - title
# -	artist
# - genre
# - play ("Tommy by the Who is playing.")

# Instantiate a few songs to test your class

class Song
#title
	def title=(title)
		@title = title
	end

	def title
		return @title
	end
#artist
	def artist=(artist)
		@artist =  artist
	end
	def artist
		return @artist
	end
#genre
	def genre=(genre)
		@genre = genre
	end
	def genre
		return @genre
	end

	def play
		return "#{@self.title()} by #{@self.artist()} is playing."
	end

end

hips_dont_lie = Song.new
hips_dont_lie.title=("Hips Don't Lie")
#=> "Hips Don't Lie"
hips_dont_lie.artist=("Shakira")
#=> "Shakira"
hips_dont_lie.genre=("Puhp")


puts hips_dont_lie.title()
puts hips_dont_lie.artist()
puts hips_dont_lie.genre()
puts hips_dont_lie.play()


#-------------INSTRUCTIONS------------
# Create a Playlist
# - songs (use song class)
# - start (a random song starts)
# - skip (another random song is played)
# - add songs
# - remove songs
# - currently playing song

class Playlist
  
  def initialize()
  	@songs = [] #this is an array
  end

  def setup_playlist
  	@songs = []
  end

# - add songs
  def add_song(song) #adding songs to your playlist
  	self.songs().push(song) #or can be @songs().push(song).  self refers to instance
  end

 # to remove song:
  def remove_song(song)
    self.songs().delete(song)
  end

#how to start a random song
  def start
  	@current_song = self.songs().sample
  	puts @current_song.play()
  end

 # skip songs
  def skip
  	self.start()
  end

# - currently playing song
  def songs #checks the songs
  	return @current_songs #@songs is a getter method
  end

  def songs
    return @songs
  end
 end

playlist = Playlist.new
playlist.add_song(hips_dont_lie) #this adds songs to the array

puts playlist.songs()







#------TEST---------

# song1 = Song.new
# song1.title = ("Song 1 Title")
# song1.artist = ("Song 1 Artist")
# song1.genre = ("Song 1 Genre")

# song2 = Song.new
# song2.title = ("Song 2 Title")
# song2.artist = ("Song 2 Artist")
# song2.genre = ("Song 2 Genre")

# song3 = Song.new
# song3.title = ("Song 3 Title")
# song3.artist = ("Song 3 Artist")
# song3.genre = ("Song 3 Genre")


# class Playlist 
#   def playlist =(playlist) 
#     @playlist = (song1, song2, song3)
#   end 
#   def playlist
#     return @playlist
#   end 
#  #  def play
# 	# 	return song1
# 	# end
# end
