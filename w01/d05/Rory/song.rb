# Song
# - title
# - artist
# - genre

class Song
  
  def title=(input)
    @title=input
  end

  def title()
    return title
  end
  
  def artist=(input)
    @artist=input
  end

  def artist()
    return @artist
  end

  def genre=(input)
    @genre=input
  end

  def genre()
    return @genre
  end

  def play
    puts "#{@title} by #{@artist} is playing"
  end

end


hips_dont_lie = Song.new
hips_dont_lie.title = "Hips Don't Lie"
hips_dont_lie.artist = "Shakira"
hips_dont_lie.play


#Playlist
#-songs (use Song class for this)
#-start (a random song starts)
#-skip (another random song is played)
#-add songs
#-remove songs
#-currently playing song

class Playlist
  def initialize()
    @songs = []
  end

  def add_song(song)
    self.songs().push(song)
    #self is the instance of the class(initialization of the class)
    #if I instantiate 10 playlists, there are 10 selfs
  end

  def remove_song(song)
    self.songs().delete(song)
  end

  def start
    @current_song = self.songs().sample
    puts @current_song.play()
  end

  def skip
    self.start()
  end
    
  end
  def current_song
    return @current_song
  end

  def songs
    return @songs
  end

end

playlist = Playlist.new
playlist.add_song(hips_dont_lie)