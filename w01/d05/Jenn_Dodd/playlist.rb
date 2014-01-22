#DEFINE SONG CLASS

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
    @genre = @genre
  end
  def genre
    return genre
  end
  def play
    return "#{self.title()} by #{self.artist()} is playing."
  end
end

#MAKE PLAYLIST

class Playlist
  def initialize()
    @playlist = []
  end
  def add_song(song)
    self.playlist().push(song)
  end
  def start
    @current_song = self.playlist().sample
    puts @current_song.play()
  end
  def current_song
    return @current_song.play()
  end
  def skip
   self.start()
  end
  
  def remove_song(song)
    puts "Removing song: #{song}"
    self.playlist.delete(song)
  end
  def playlist
    return @playlist.each {|x| puts x.title }
  end
  
end

#MAKE SOME SONGS

dude = Song.new

dude.title=("Dude Looks Like a Lady")
dude.artist=("Aerosmith")
dude.genre=("Best")

hips = Song.new

hips.title=("Hips Don't Lie")
hips.artist=("Shakira")
hips.genre=("Pop")


playlist1 = Playlist.new
  
playlist1.add_song(dude)

playlist1.add_song(hips)

puts playlist1.playlist

playlist1.start

puts playlist1.current_song

#playlist1.start

#playlist.current_song



