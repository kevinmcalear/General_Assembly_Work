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

    def artist()
      return @artist
    end

      def genre=(genre)
        return @genre = genre
      end

      def genre           # @instance_variable is sugar for 'self.title()'
        return @genre
      end

        def play 
          return "\"#{@title}\" by #{@artist} is now playing."
          # you can call other instance methods from an instance method by typing @instance_method, in this case @title/@artist
          # 
        end

end

blvd_of_broken_dreams = Song.new

  blvd_of_broken_dreams.title = "Blvd of Broken Dreams"

  blvd_of_broken_dreams.artist = "Greenday"

  blvd_of_broken_dreams.genre = "Rock & Roll"

  blvd_of_broken_dreams.play

hips_dont_lie = Song.new

  hips_dont_lie.title = "Hips Don't Lie"

  hips_dont_lie.artist = "Shakira"

  hips_dont_lie.genre = "Pop"

  hips_dont_lie.play

trouble = Song.new

  trouble.title = "Trouble"

  trouble.artist = "Taylor Swift"

  trouble.genre = "Fake Country"

  trouble.play

# instantiate a few songs to test your class

class Playlist

  def initialize()
    @songs = []
  end

  # def make_playlist
  #   @songs = []
  # end

  # def songs=(songs)
  #   @songs = songs
  # end

  def start=(start) #random song starts 
    current_song = self.songs().sample
    puts @current_song.play
  end

  def current_song
    return @current_song
  end

    def skip=(skip) #random start starts
      @skip = skip
    end

    def skip
      self.start()
    end

      def add_song=(add)
        self.songs().push(add_song) #could also be typed @songs.push(song)
      end

        def remove_song=(remove)
          self.songs().delete(song)
        end

          def currently_playing
            puts "#{songs} is currently playing."
          end

          def songs
            return @songs
          end


end

playlist = Playlist.new
playlist.add_song(hips_dont_lie)

Playlist.start()




