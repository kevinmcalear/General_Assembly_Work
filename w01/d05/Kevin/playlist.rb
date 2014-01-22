class Playlist
  def make_playlist
    @playlist = [ ]
  end
  
  def mysongs
    return @playlist
  end

  def start
    @playlist.sample
  end

  def skip
    @playlist.sample
  end

  def add_songs(song)
    @song = song
    @playlist << @song
  end

  def remove_song
    puts "Removing the current song #{self.song}."
    @remove = remove
    @playlist.delete(@song)
  end

  def  current_song
    puts "Currently Playing #{self.song}."
  end
end


kevins_playlist = Playlist.new
kevins_playlist.make_playlist
kevins_playlist.add_songs("Test")
kevins_playlist.add_songs("Test")
kevins_playlist.add_songs("Test")
puts kevins_playlist.mysongs()