#Create a class for Song
#attributes for title, artist, genre
#create a method for play that returns a string with the title and artist.  


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

watchtower = Song.new
watchtower.title = ("Watchtower")
watchtower.artist = ("Jimi")
watchtower.genre = ("Rock")

sgtpepper = Song.new
sgtpepper.title = ("SGT Pepper")
sgtpepper.artist = ("Beatles")
sgtpepper.genre = ("Rock")

take_it_easy = Song.new
take_it_easy.title = ("Take it Easy")
take_it_easy.artist = ("The Eagles")
take_it_easy.genre = ("Rock")

hit_me_baby = Song.new
hit_me_baby.title = ("Hit me baby one more time")
hit_me_baby.artist = ("Britney Spears")
hit_me_baby.genre = ("Rock")


###Create a Playlist. 
##Features-- 
##Start a playlist (Random Song)
# skip a song (Play another random song)
# remove song 
# view currently playing song

playlist_1 = [stairway, watchtower, sgtpepper, take_it_easy, hit_me_baby]

class Playlist
	song_playing_message = "#{song_playing.title()} by #{song_playing.artist()} is playing"

	def play
		song_playing = playlist_1.sample
		puts song_playing_message
	end
	def skip
		if song_playing == ""
		puts "Please select a song to play"
		else 
			song_ignore = song_playing.index 
			song_playing = playlist_1.shuffle[song_ignore]
			puts song_playing_message
		end 
	end 
	def add_song(new_song)
		playlist_1.push(new_song)
	end
	def remove_song
		playlist_1.delete(song_playing)
	end 
	def view_song
		puts song_playing_message
	end 
end

playlist_1.play


### Class Example
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
	def songs
		return @songs
	end

end

playlist = Playlist.new
playlist.setup_playlist()
playlist.add_song(watchtower)

puts playlist.songs()