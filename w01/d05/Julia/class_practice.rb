#Song
# - Title
# - Artist
# - Genre
# - play "Tommy by the Who is playing"

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
    puts "#{self.title()} by #{self.artist()} is playing."
  end
end

flowers_in_her_hair = Song.new
flowers_in_her_hair.title=("Flowers in Her Hair")
flowers_in_her_hair.artist=("The Lumineers")
flowers_in_her_hair.genre=("folksy-ish")

hey_ya = Song.new
hey_ya.title=("Hey Ya")
hey_ya.artist=("Outkast")
hey_ya.genre=("pop")

#puts flowers_in_her_hair.play



=begin
#playlist
- songs
– start (a random song starts)
- skip (another random song is played)
- currently playing song
- add songs
- remove songs
=end

class Playlist
  #this is run at the time of instantiation
  #creates a new array at the point of instantiation
  #i.e. when you call Playlist.new an array will be created
  def initialize()
      @songs = []
  end

  #this adds a new song to our playlist
  #self when written inside an instance method refers to the instance
  #self.songs().push(song) is the same thing as @songs.push(song)
  #pushes songs onto the array
  def add_song(song)
    self.songs().push(song)
  end

  #remove a song
  def remove_song(song)
    self.songs().delete(song)
  end

  #play method
  def start
    @current_song = self.songs().sample
    puts @current_song.play()
  end

  def current_song
    return @current_song
  end

  #this is a method just for inspecting what the
  #playlist is
  #this returns an array
  def songs
    return @songs
  end

  #skip method – same behavior as start
  #alias method
  def skip
    self.start()
  end
end

playlist = Playlist.new
playlist.add_song(flowers_in_her_hair)
playlist.add_song(hey_ya)

puts playlist.songs()
playlist.start()




