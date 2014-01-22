# Song
#   - title
#   - artist
#   - genre
#   - play ("Tommy by the Who is playing. ") 

# Instantiate a few songs to test your class. 

class Song
    # SETTER
    def title=(title)
        @title = title
    end
    # GETTER
    def title()
        return @title
    end

    def artist=(artist)
        @artist=artist
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

# SYNTACTIC SUGAR: you can not write "self." in the string interpolators below
    def play
        return "#{self.title} by #{self.artist} is playing. "
    end
end

song_1 = Song.new
song_1.title = ("Juicy")
song_1.artist = ("Notorious B.I.G.")
song_1.genre = ("Hip hop")

# puts song_1.title()
# puts song_1.artist()
# puts song_1.genre()
# puts song_1.play()

song_2 = Song.new
song_2.title = ("Jocko Homo")
song_2.artist = ("DEVO")
song_2.artist = ("Post-Punk")

# Playlist
# - songs
# - start (a random song starts)
# - skip (another random song is played)
# - add songs
# - remove songs
# - currently playing song

class Playlist
    def initialize()
        @songs = Array.new
    end

    def add_song(song)
        self.songs().push(song)
    end

    def remove_song(song)
        self.songs().delete(song)
    end

    def start()
        @current_song = self.songs().sample
        puts @current_song.play()
    end

    def skip()
        self.start()
    end

    def current_song
        return @current_song

    def songs
        return @songs
    end
end

my_new_playlist = Playlist.new
# something's missing
my_new_playlist.add_song(song_1)

puts my_new_playlist.songs()


