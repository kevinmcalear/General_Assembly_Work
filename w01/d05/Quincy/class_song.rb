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

    def artist()
      return @artist
    end

     def genre=(genre)
      @genre = genre
    end

    def genre()
      return @genre
    end

      def play
              # title = "Shmee"
              # artist = "Garbage"
          return "#{self.title()} by #{self.artist()} is playing."
        end
      end

    songs = Song.new
    songs.title=["Chapter 1", "Chapter 2", "Chapter 3", "Chapter 4", "Chapter 5"] 

    puts song.title=()
    puts song.play=()

# Playlist
# - songs
# - start (a random song starts)
# - skip (another random song is played)
# - add songs
# - remove songs
# - currently playing songs

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
end

  def songs
    return @songs
  end
end

playlist = Playlist.new
playlist.add_song(hips_dont_lie)

puts playlist.songs()