class Song

  def title=(title) #can name this whatever)
    @title = (title)
  end

  def artist=(artist)#argument
    @artist = artist
  end

  def genre=(genre)
    @genre = (genre)
  end

  def title#()
    return @title
  end

  def artist#()
    return @artist
  end

  def genre#()
    return @genre
  end

  def play
    #return "#{@title} by #{@artist} is playing" works, but is syntactic sugar
    return "#{self.title()} by #{self.artist()} is playing"
  end
end

song_1 = Song.new
song_1.title=("Back In Black")
song_1.artist=("Ac Dc")
song_1.genre=("Rock")

song_2 = Song.new
song_2.title=("Highway to Hell")
song_2.artist=("Ac Dc")
song_2.genre=("Rock")


#puts song_1.play

#playlist
  # -songs
  # -start (random song starts)
  # -skip (another random song is played)
  # -add songs
  # -currently playing song

#playlist = [song_1, song_2]

class Playlist
  def initialize
    @songs = []
  end

  def add_song(song)
    @songs.push(song)#is the same as self.songs()
  end

  def remove_song(song)
    @songs.delete(song)#is the same as self.songs()
  end

  def start
    @current_song = @songs.sample
    puts @current_song.play()
  end

  def current_song
    return @current_song
  end

  def skip
    self.start()
  end

  def songs
    return @songs
  end
end


playlist = Playlist.new
playlist.setup_playlist()
playlist.add_song(song_2)
playlist.add_song(song_1)

puts playlist.songs





