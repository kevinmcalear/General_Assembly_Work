class Playlist
  def make_playlist
    @songs = []
  end
  def songs
    return @songs
  end
  def add_song(song)
    self.songs << song
  end
  def remove(song)
    self.songs.delete(song)
  end
  def currently_playing(song)
  end
end

playlist = Playlist.new
playlist.make_playlist()
playlist.add_song(song1)
