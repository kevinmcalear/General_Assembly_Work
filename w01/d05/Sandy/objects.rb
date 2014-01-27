# Song
# -title
#- artist
# - genre
#-play ("Tommy by The Who is Playng.")

#Instantiate a few songs to test your class

class Song
  def title(some_title) #< (some_title) argument is arbitrary
    @title = some_title
  end 
  def title 
    return @title 
  end 
end 

class Song
  def artist(some_artist) 
    @artist = some_artist
  end 
  def artist
    return @some_artist
  end 
end 

class Song
  def genre(some_genre) 
    @genre = some_genre
  end 
  def genre
    return @some_genre
  end 
end 

class Song
def play
  return " #{self.title()} by #{self.artist()}"
end
end

tommy_by_the_who = Song.new
tommy_by_the_who.title=("Tommy")

#puts tommy_by_the_who.title()
#=> "Tommy
tommy_by_the_who.artist=("The Who")
puts tommy_by_the_who.artist()
tommcd y_by_the_who.genre = ("Rock")
puts tommy_by_the_who.genre()

#Create a playlist
#-songs
#-start (a random song starts playing)
#-skip (another random song is played)
#-add songs
#-remove songs
#-currently playing song
#picture of what we want to do 
# playlist [ @songs = []
#              #add songs
#              @songs.push

song1 = Song.new
song1.title = ("Song 1 Title")
song1.artist = ("Song 1 Artist")
song1.genre = ("Song 1 Genre")

song2 = Song.new
song2.title = ("Song 2 Title")
song2.artist = ("Song 2 Artist")
song2.genre = ("Song 2 Genre")

song3 = Song.new
song3.title = ("Song 3 Title")
song3.artist = ("Song 3 Artist")
song3.genre = ("Song 3 Genre")

class Playlist 
  def initialize()
    puts "This is initialized"
  end

  def setup_playlist
    @song = []
  end 

  def add_song(song)
    self.songs().push(song)
  end 

  def start
    @current_song = self.songs().sample
    puts @current_song.play()
  end

  def remove_song(song)
    self.songs().delete(song)
  end 

  def skip_song
   self.start()
 end
  
  def songs
    returns @songs
  end
end 

playlist = Playlist.new
playlist.setup_playlist()
playlist.add_song(hips_dont_lie)

puts playlist.songs()

##############################

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

###########################
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