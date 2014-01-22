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
    return @artist
  end
  def play
    return "#{@title} by #{@artist} is playing."
  end
end

arabella = Song.new
arabella.title=("Arabella")
arabella.artist=("Artic Monkeys")
arabella.genre=("Indie Rock")

i_wanna_hold_your_hand = Song.new
i_wanna_hold_your_hand.title=("I Wanna Hold Your Hand")
i_wanna_hold_your_hand.artist=("The Beatles")
i_wanna_hold_your_hand.genre=("Pop")

do_i_wanna_know = Song.new
do_i_wanna_know.title=("Do I Wanna Know?")
do_i_wanna_know.artist=("Artic Monkeys")
do_i_wanna_know.genre=("Indie Rock")



class Playlist
  def initialize()
    @songs = []
  end
  def chocolate
    return @songs
  end
  def add_song(song)
    self.chocolate().push(song)  #self is this instance of the class. 
  end
  def remove_song(song)  #this is called an instance method.
    self.chocolate().delete(song)
  end
  def current_song
    return @current_song
  end
  def start
    @current_song = self.chocolate().sample #@current_song is an instance of a song class
    puts @current_song.play  #@so the it has a play method
  end
  def next
    self.start() #This is referencing the other method. 
  end
  def shuffle
    @shuffle_song = self.chocolate().sample
    puts @shuffle_song.play 
  end
  def name
    name = self.current_song()
    puts name.title
  end
end

playlist1 = Playlist.new
playlist1.add_song(arabella)
playlist1.add_song(i_wanna_hold_your_hand)
playlist1.add_song(do_i_wanna_know)

playlist1.start

playlist1.name



