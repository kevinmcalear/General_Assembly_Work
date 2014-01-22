#MAKE A CLASS

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

#SONG 1

dude = Song.new

dude.title=("Dude Looks Like a Lady")
dude.artist=("Aerosmith")
dude.genre=("Best")

#puts "------------------VVVVVVVV FIRST SONG"

puts dude.play
dude.title=("Dude Looks Like a Laday!")
puts dude.play

#SONG 2

bohemian = Song.new()

#bohemian.song=("Bohemian Rhapsody", "Queen", "Rock")

bohemian.title = ("Bohemian Rhapsody")
bohemian.artist = ("Queen")
bohemian.genre = ("Rock")

#puts "------------------VVVVVVVV SECOND SONG"

puts bohemian.play

#SONG 3

tribute = Song.new()

tribute.title = ("Tribute")
tribute.artist = ("Tenacious D")
tribute.genre = ("Rock")


#puts "------------------VVVVVVVV NEXT SONG"

puts tribute.play





