### Class Example
class Song
	def title= (title)
		@title = title
	end 
	def artist= (artist)
		@artist = artist
	end
	def genre= (genre)
		@genre = genre
	end 	
	def title
		return @title
	end
	def artist
		return @artist
	end
	def genre
		return @genre
	end
	def play
		puts "#{self.title()} by #{self.artist()} is playing"
		#self.play()-- this will return an error for stack too deep.  
	end
end

stairway = Song.new
stairway.title = ("Stairway")
stairway.artist = ("Zep")
stairway.genre = ("Rock")

class Playlist

	def initialize()
		puts "This class was initiatized!!"
	end 

	def setup_playlist  ##this is not best practice
		@songs = []
	end

	def add_song(song)
		self.songs().push(song)
	end
	def song_titles
		return @songs.map{|song|song.title}
	end

	def play
	end

	def start
		@current_song = self.songs().sample
		puts @current_song.play()
	end

	def skip
		self.start()  ###calling from the class instance
	end 

	def method_name
		
	end

	def remove_song(song)
		self.songs().delete(song)	
	end


	def songs
		return @songs
	end

end

playlist = Playlist.new
playlist.setup_playlist()
playlist.add_song(stairway)

puts playlist.song_titles