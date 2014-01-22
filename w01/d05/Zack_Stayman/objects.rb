class Song

  def title=(title)
    @title = title
  end

  def title()
    return @title
  end

  def artist=(artist)
    @artist = artist
  end

  def genre=(genre)
    @genre = genre
  end

  def play
    return "#{@title} by #{@artist} is playing."
  end

end

show_tune=Song.new

show_tune.title = "Pinball Wizard"
show_tune.artist = "The Who"
  # puts show_tune.play

  rock_tune=Song.new

  rock_tune.title = "Jailhouse Rock"
  rock_tune.artist = "Elvis"

# Playlist
# contains songs
# start a random Playlist
# skip another random song plays
# add songs
# remove songs
# currently playing song

class Playlist
  def initialize()
    puts "THIS CLASS WAS JUST INITIALIZED"
    @songs = Array.new
  end

  # def create_playlist
    
  # end


  def add(song)
    self.songs().push(song)
  end

  def songs
    return @songs
  end

  def add_song(song)
    self.songs().push(song)
  end

  def remove_song(song)
    self.songs().delete(song)
  end

  def start
    @current_song = self.songs().sample
    puts @current_song.play
  end

  def current_song
    return @current_song
  end

  
  def titles
    self.songs.map do |song|
      song.title
    end
  end

  def skip
    self.skip()
  end

end

tracks = Playlist.new
tracks.create_playlist
tracks.add_song(show_tune)
tracks.add_song(rock_tune)
puts "\n"
tracks.titles
puts "\n"
tracks.start
puts "\n"
