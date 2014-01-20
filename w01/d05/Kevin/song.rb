class Song
  # def initialize(title, artist, genre)
  #   @title = title
  #   @artist = artist
  #   @genre = genre
  # end

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
    return "#{self.title()} by #{self.artist()} is playing."
  end

  def add_hash
    return { :artist => self.artist, :title =>self.title, :genre =>self.genre }
  end
end



my_new_song = Song.new
my_new_song.artist=("ARTIST")
my_new_song.title=("TITLE")
my_new_song.genre=("MY GENRE")

# puts my_new_song.play()
# puts my_new_song.add_hash()

# play_list = []

# play_list << my_new_song.add_hash
# play_list << my_new_song.add_hash
# play_list << my_new_song.add_hash

# puts play_list

# my_song = Song.new("My Title", "My Artist", "My Genre")

# puts my_song.play


class Playlist
  def initialize()
    @playlist = [ ]
  end
  
  def mysongs
    return @playlist
  end

  def start
    @current_song
  end

  def skip
    @playlist.sample
  end

  def add_songs(song)
    @playlist << song
  end

  def remove_song(song)
    puts "Removing the current song #{self.song}."
    @playlist.delete(song)
  end

  def  current_song
    puts "Currently Playing #{self.song}."
  end
end

kevins_playlist = Playlist.new
kevins_playlist.add_songs(my_new_song.add_hash)
kevins_playlist.add_songs(my_new_song.artist)
kevins_playlist.add_songs(my_new_song.genre)
puts kevins_playlist.mysongs()
