#exercise.rb
# Song
#title
#artist
#genre

class Song

  def title=(title)
    @title = title
  end

  def title
    return @title
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    return @artist
  end

  def genre=(genre)
    @genre=genre
  end
  def genre
    return genre
  end

  def play(title, artist)
    return "#{self.title()} by #{self.artist} is playing..."
  end

end

new_song = Song.new
new_song.title=("Like a Virgin")
new_song.artist  =( "Madonna")
new_song.genre  = ("Pop")
puts new_song.play(new_song.title, new_song.artist)



#Playlist
# - songs
# - start ( a random song started)
# - skip ( another random song is played)
# - add songs
# - remove songs
# - currently playing song

class Playlist

  def initialize()
    @songs = []
    puts "This class was just initialized!"
  end

  def add_song(song)
    self.songs().push(song)
  end

  def songs
      return @songs
  end

  def remove_song(song)
    @current_song = self.songs().delete(song)
    puts @current_song.play()
  end

  def current_song
    return @current_song
    
  end

  def start
    self.songs().sample
  end

  def skip
    self.start()
  end

end

playlist = Playlist.new
playlist.add_song(new_song)

#puts playlist.songs
playlist.start()

  





