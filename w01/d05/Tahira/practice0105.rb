#Song
#title
#artist
#genre (Tommy by the Who is playing.")

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
    return "#{self.title} by #{artist} is playing"
  end

end

tommy = Song.new
tommy.title=("Tommy")
tommy.artist=("The Who")
tommy.genre=("Rock")
puts tommy.play

hey = Song.new
hey.title = "Hey Ya"
hey.artist = "Outkast"
puts hey.play

class Playlist

  def initialize()
    @songs = Array.new
  end

  def add_song(song)
    self.songs().push(song)
  end

  def songs
     return @songs
  end

  def start
    @current_song = self.songs().sample.title
  end

  def skip
    return start
  end

  def current_song
    return self.current_song
  end

  def remove_song(song)
    @songs.delete(song)
  end
end



playlist = Playlist.new
playlist.add_song(tommy)
puts playlist.songs()

#playlist
# songs
# start - a random song starts
# skip - another random songs
# currently playing songs 
# add songs and remove songs