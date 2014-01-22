class Song
  def title=(input)
    @title = input
  end
  def title
    return @title
  end

  def artist=(input)
    @artist = input
  end
  def artist
    return @artist
  end

  def genre=(input)
    @genre = input
  end
  def genre
    return @genre
  end

  def playing_now
    puts "#{self.title()} by #{self.artist()} is playing."
  end

  # def add_to_hash
  #   return {:title => "#{self.title()}", :artist => "#{self.artist()}", :genre => "#{self.genre()}"}
  # end
end

class Playlist
  def initialize()
    @songs = []
  end

  def songs
    return @songs
  end

  def start
    @current_song = self.songs().sample
    puts self.current_song()
  end

  def current_song
    return @current_song
  end

  def add_song(song)
    self.songs() << song
  end

  def remove_song(song)
    self.songs().delete(song)
  end

  def shuffle()
    self.start()
  end
end

song1 = Song.new
song1.title = "Tommy"
song1.artist = "The Who"
song1.genre = "Classic Rock"
puts song1.playing_now

playlist = Playlist.new
playlist.add_song(song1)

puts playlist.current_song()