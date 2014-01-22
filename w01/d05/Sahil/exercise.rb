class Song
	
	def title=(title)
		@title = title
	end
	
	def artist=(artist)
		@artist = artist
	end

	def genre=(genre)
		@genre = genre
	end

	def title()
		return @title
	end

	def artist()
		return @artist
	end

	def genre()
		return @genre
	end

	def play()
		puts "#{@title} by #{@artist} is playing"
	end
end

class Playlist
	def initialize()
		@songs_list = []
	end
	def songs()
		return @songs_list
		#songs is an array
	end
	
	def add_songs(song)
		@songs_list.push(song)
	end
	
	def remove_songs(song)
		@songs_list.delete(song)
	end

	def current_song()
		return @current_song
	end
	
	def start()
		@current_song = @songs_list.sample
	end

	def skip()
		if @songs_list.size > 1
			old_song = @current_song
			while (old_song == @current_song)
				@current_song = @songs_list.sample
			end
		end
	end
end

# a = Playlist.new
# puts a.songs()
# puts a.add_songs("a")
# puts a.add_songs("b")
# puts a.add_songs("c")
# puts a.add_songs("d")
# puts a.current_song()
# puts a.start()
# puts a.skip()
# puts a.skip()
# puts a.skip()
# puts a.skip()
# puts a.skip()
# puts a.skip()
# puts a.skip()




