# Objects
# object - oriented
# state / behavior
# Model

# Organizing your code is one of the principal challenges of designing software. it's very hard to do well even if you have a lot of tools. Paradigms have evolved to solve that problem, including object oriented programming. 

# Functional paradigm is another major paradigm 
# Software is essentially an abstract model of the real world. Objects help us do this.

# Objects help us manage complexity and reuse code. Encapsulate behavior and state of a particular entity in our system.

# Classes are our templates for our objects. Classes are CamelCased.

class Movie
  def title
    return "Sound of Music"
  end
end

# here we defined a class and within the class an INSTANCE METHOD. 

# to instantiate a new movie:
sound_of_music = Movie.new
sound_of_music.title

# pry(main)> sound_of_music.title
# => "Sound of Music"

# Instance methods are available on the instance of a class.

class Movie
  def self.hd?
    return true
  end
end

#we defined a class method here. Defined on self, self being a class. The class is an object which defines and instantiates objects.

#  sound_of_music.hd? 
# returns an error. the sound_of_music variable points to an instance. 

sound_of_again = Movie.new

# points to a new instance. new object in memory. 

Movie.hd?
# => true

class Movie
  #setter  method sets to the instance variable
  def title=(title)
    @title = title
  end
  #getter method, so we can get things without having to set them
  def title
    return @title
  end
end

sound_of_music.title = "The South of Music" 
#this is a method call not an assignment

class Movie
  def set_title_of_movie_yay(title)
    @title = title
  end
end

# instance variables are visible only within the sope of the instance. all data is exposed to the outside world through methods because instance variables are private. 

class Movie
  def this_movie_is_sweet
    return "#{title} is the  sweetest music"
  end
end

class Movie
  def self.form_of_entertainment?
    return true
  end
end

Movie.form_of_entertainment?
# [16] pry(main)> Movie.form_of_entertainment?
# => true

class Movie
  def self.form_of_entertainment=(bool)
    @@form_of_entertainment = bool
  end
  def self.form_of_entertainment?
    return @@form_of_entertainment
  end
end

# @@ class variables


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
    @genre=genre
  end

  def genre
      return @genre
    end

  def play
    return " #{self.title()} by #{self.artist()} is playing."
  end

end

hips = Song.new
hips.title = "Hips dont lie"
hips.artist = "Shakira"

karma_police = Song.new
karma_police.title = "Karma Police"

array = [hips, karma_police]

# puts array[0].title

# Playlist
# - songs
# - start , a random song starts
# - skip , another random song is played
# - add songs
# - remove songs
# - currently playing song 

# workflow: creating songs, then creating a playlist and adding songs to the playlist. your playlist needs to hold many songs.

class Playlist

#this is how we typically do this: initialize method. protected method. this method can take arguments
def initialize()
  @songs = []
end

#this method is a behavior that changes the state of the playlist. self is the instance of the class. if you have 10 songs self refers to one of the 10 instances
  def add_song(song)
    self.songs() << song
  end

#this is a method just to inspect what the playlist is. this is a getter method that returns the array
  def songs
    return @songs
  end

  def remove_song(song)
    self.songs().delete(song)
  end

  def start
    @current_song = self.songs().sample
    puts @current_song.play()
  end

  def current_song
    return @current_song
  end

  def skip
    self.start()
  end

end

playlist = Playlist.new
yesterday = Song.new
yesterday.title = "Yesterday"

playlist.add_song(yesterday)
playlist.add_song(hips)
playlist.add_song(karma_police)

playlist.remove_song(hips)

puts playlist.start 

#when we have things we want to run when a class is instantiated we use the initialize method

#initialize method is a special method. arguments are passed to it.


















