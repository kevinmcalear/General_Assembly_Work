class Song
  # belongs_to :playlist
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

   def play=(play)
     @play = play
    end
    def play 
    return "#{self.title()} by the #{self.artist()} is playing."
  end
end

tommy = Song.new

tommy.title = "Tommy"

tommy.artist = "Who"

tommy.genre = "Rock"

tommy.play = "Tommy by the Who is Playing"

puts tommy
puts tommy.title
puts tommy.artist
puts tommy.genre
puts tommy.play


class Playlist
  def initialize()
    @songs =[]
  end

  def add_song(song)
    self.songs().push(song)
  end

  def songs
    return @songs
  end

playlist = Playlist.new
playlist.setup_playlist()
playlist.add_song(tommy)

puts playlist.songs()



  def start
    @current_song = self.songs().sample
    puts @current_song.play()
  end

  def currently_playing
    return @current_song
  end

  def skip
    self.start()
  end

  def remove_song(song)
    self.songs().delete(song)
  end

end




