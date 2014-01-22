# class Movie
#   def title 
#     return "Sound of Music"
#   end

#   def self.hd?
#     return true
#   end
# end

class Movie
  def title=(title) #convention - this 'title' takes an argument that return an instance variable, 'title'
    @title = title  #this returns 'nil' if nothing is enter into argument
  end

  def title
    return @title #returns data of the 'title'
  end

  def this_movie_is_sweet
    return "#{@title} is the sweetest movie ever!"
  end
end

puts sound_of_music = Movie.new
# instantiates new instance variable => #<Movie:0x007fea59143f20>
# puts sound_of_music.title
# => Sound of Music

# Movie.hd?
#=> throws error bc different 

puts sound_of_music.title=("Sound of Music")
# puts sound_of_music.title = "The Sound of Music"  #this is a method function, not assignment

rocky = Movie.new

puts rocky.title = "Rocky"

puts sound_of_music.this_movie_is_sweet



