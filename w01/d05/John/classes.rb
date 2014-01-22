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
    @genre = genre
  end

  def genre
    return @genre
  end

  def play
    return "#{self.title} by #{self.artist} is playing."
  end

end

song1 = Song.new
song1.title= "Come Fly With Me"
song1.artist= "Frank Sinatra"
song1.genre= "Standards"

# puts song1.title
# puts song1.artist
# puts song1.genre
# song1.play
# 
# puts

song2 = Song.new
song2.title= "Thriller"
song2.artist= "Michael Jackson"
song2.genre= "Pop Standards"

# puts song2.title
# puts song2.artist
# puts song2.genre
# song2.play


# Playlist -songs, start (a random song), skip (a random song), add songs, remove songs, currently playing song

class Playlist
  
  def initialize()
    puts "Playlist initialized."
    @songs = []
  end
    
  def add_song(song)
    self.songs().push(song)
  end

  def remove_song(song)
    self.songs.delete(song)
  end

  def start
    @current_song = self.songs.sample
    puts @current_song.play
  end

  def skip
    self.start
  end

  def current_song
    return @current_song
  end

  def songs
    return @songs
  end

end

playlist = Playlist.new

playlist.add_song(song1)
playlist.add_song(song2)
puts playlist.songs()
playlist.start










