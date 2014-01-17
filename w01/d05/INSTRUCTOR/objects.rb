# Song
# - title
# - artist
# - genre
# - play ("Tommy by The Who is playing.")

# Instantiate a few songs to test your class.

class Song
  def title=(title)
    @title = title
  end

  def title()
    return @title
  end

  # def title()
  #   return "Hamburgers"
  # end

  def artist=(artist)
    @artist = artist
  end

  def artist()
    return @artist
  end

  def genre=(genre)
    @genre = genre
  end

  def genre
    return @genre
  end

  def play
    # title = "Shmee"
    # artist = "Garbage"
    return "#{self.title()} by #{self.artist()} is playing."
  end
end

hips_dont_lie = Song.new
hips_dont_lie.title=("Hips Don't Lie")
hips_dont_lie.artist=("Shakira")
hips_dont_lie.genre=("Puhp")

puts hips_dont_lie.title()
puts hips_dont_lie.artist()
puts hips_dont_lie.genre()
puts hips_dont_lie.play()

# Playlist
# - songs
# - start (a random song starts)
# - skip (another random song is played)
# - add songs
# - remove songs
# - currently playing song


class Playlist
  def initialize()
    @songs = []
  end

  def add_song(song)
    self.songs().push(song)
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

  def current_song
    return @current_song
  end

  def songs
    return @songs
  end
end

playlist = Playlist.new
playlist.add_song(hips_dont_lie)

playlist.start()
