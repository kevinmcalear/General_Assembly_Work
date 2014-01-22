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
    #return "#{@title} by #{@artist} is playing."
    return "#{self.title()} by #{self.artist()} is playing."
  end
  def start=(satrt)
    @start = start
  end
end

new_music = Song.new
new_music.title="Scarlet Begonias"
new_music.artist="Grateful Dead"
new_music.genre="pop"

puts new_music.title
puts new_music.artist
puts new_music.genre
puts new_music.play

# create a playlist
# - songs
# - satrt (a random song start)
# - skip (another random song is played)
# - add songs
# - remove  songs
# - currently playing

class Playlist
  def initialize()
    @songs = []
    puts "This class was just initialized"
  end
  def add_song(song)
    self.songs().push(song)
  end
  def delete_song(song)
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
playlist.add_song(new_music)
playlist.add_song(new_music)
#playlist.delete_song("Tommy")
playlist.start()
#playlist = [hips_dont_lie]

