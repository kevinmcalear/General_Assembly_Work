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
      return "#{@title} by #{@artist} is playing!"
    end
  end

  marc = Song.new
  marc.title = "Wanderer"
  marc.artist = "Marc Broussard"
  marc.genre = "Soul"


  wf = Song.new
  wf.title = "One Headlight"
  wf.artist = "The Wallflowers"
  wf.genre = "Chill"


  nick = Song.new
  nick.title = "New Man"
  nick.artist = "Nick Moran"
  nick.genre = "Soul"


  # Playlist
  # with many songs
  # start a playlist (a random song starts)
  # skip to the next song (a random song is played)
  # add songs
  # remove songs
  # currently playing song

  class Playlist
    def initialize()
      @songs = []
    end

    def add(music)
      self.songs().push(music)
    end

    def songs
      return @songs
    end

    def remove_songs(music)
      self.songs().delete(music)
    end

    def start
     @current = self.songs.sample
     puts @current.play
    end

    def current
     return @current
    end

    def skip
    self.start()
   end
end 


nicklist = Playlist.new
nicklist.add(nick)
nicklist.add(marc)
nicklist.add(wf)


nicklist.start
nicklist.current
nicklist.skip
nicklist.current
nicklist.skip
nicklist.skip









