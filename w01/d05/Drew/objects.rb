# class Song

#   def title=(title)
#     @title = title
#   end

#   def title()
#     return @title
#   end

#   def artist=(artist)
#     @artist = artist 
#   end

#   def artist ()
#     return @artist
#   end

#   def genre=(genre)
#     @genre = genre
#   end

#   def genre()
#     return @genre
#   end

#   def play
#     return "#{self.title()} by #{self.artist()} is playing"
#   end
# end

# def start(start)
#   @start = start
# end

# def start()
#   return start
# end

# def skip(skip)
#   @skip = skip
# end

# def skip()
#   return skip
# end


# blue = Song.new

# blue.title = "The Monster"
# blue.artist = "Emineim"
# blue.genre = "rap"

# puts blue.play 


class Song

  def title=(title)
    @title = title
  end

  def title()
    return @title
  end

  def artist=(artist)
    @artist = artist 
  end

  def artist ()
    return @artist
  end

  def genre=(genre)
    @genre = genre
  end

  def genre()
    return @genre
  end

  def play
    return "#{self.title()} by #{self.artist()} is playing"
  end
end


song_playing = Song.new

song_playing.title = "The Monster"
song_playing.artist = "Emineim"
song_playing.genre = "rap"

puts song_playing.play 


##### Exercise 2 ######

playlist = [song_playing]

# set the array
class Playlist
#the first thing that happens no matter what 
  def initialize()
    @songs =[]
  end

#pushing a song into the array above- taking an instance of itself and pushing it into the array?
# changes the state of the playlist- adds a song  
# self is referring to the instance
  def add_song(song)
    self.songs().push(song) #could also write @songs.push #invoking the songs method and then songs down below
  end

  def remove_sons(song)
    self.songs().delete(song)
  end

# changing the state by assigning a new instance variable?
# calling the .play method from above 
# can use the method because it's in the song class 
  def start
    @current_song = self.songs().sample
    puts @current_song.play()
  end

  def current_song
      @current_song = self.songs().sample
      puts @current_song.play()
  end

def skip
    self.start()
end


#inspecting what's on the playlist
# getter method, 
  def songs
    return @songs
  end

end

playlist = Playlist.new
playlist.add_song(song_playing)

playlist.start


# our song object encapsulates all the data of title, artist, genre 








