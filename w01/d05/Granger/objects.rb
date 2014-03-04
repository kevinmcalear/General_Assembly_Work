class Song
  attr_accessor :title, :artist, :genre

def initialize(title = "<>", artist = "<>", genre = "<>")
  @title = title
  @artist = artist
  @genre = genre
end

  def play
    return "#{@title} by #{artist} is playing."
  end

  def manager(manager = @manager)
    @manager = manager
  end

end

class Playlist
  attr_accessor :songlist, :current_song


  def add_song(*songs)
    self.songlist ||= []
    songs.each {|song| self.songlist << song}
  end

  def remove_song(song)
    self.songlist.delete(song)
  end

  def start
    self.songlist.shuffle!
    self.current_song = self.songlist.sample
  end

  def skip
    index = self.songlist.index(@current_song)
    self.current_song = self.songlist[index +1] || self.songlist.first
  end

  def current_song
    "#{@current_song.title} is playing"
  end


end

my_gen = Song.new
my_gen.title = "Nookie"
my_gen.artist = "Limp Bizkit"
my_gen.genre = "my regrettable youth"

song2 = Song.new
song2.title = "N2Gether Now"
song2.artist = "Limp Bizkit"
song2.genre = "my regrettable youth"

song3 = Song.new
song3.title = "Like a Bird"
song3.artist = "Nelly Furtado"
song3.genre = "my regrettable youth"

song4 = Song.new
song4.title = "Ninja"
song4.artist = "Die Antwoord"
song4.genre = "Zeph"

song5 = Song.new("Butterfly", "I forget")

all_songs = [my_gen, song2, song3, song4, song5]
 
#all_songs.each {|el| puts el.play }

# puts song5.manager("Ted")

# puts song5.manager

# song
#   title
#   artist
#   genre

play = Playlist.new
play.add_song(song2, song3, song4)


play.start
puts play.current_song
20.times do
  play.skip
  puts play.current_song
end