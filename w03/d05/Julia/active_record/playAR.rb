require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "julia",
  :password => "",
  :database => "playground"
  )

#First we need to create a database (playground)

#Create a singular class
#We created the plural table musucals – CREATE TABLE musicals (id serial PRIMARY KEY, title varchar(100));

#We need to set Musical to inherit from ActiveRecord::Base

#We want to add:
# – title
# – composer
# – lyricist
# – year

#CLI program
# – List
# – Read
# – Update
# – Create
# – Destroy

class Musical < ActiveRecord::Base
  has_many :songs
  self.validates(:title, {presence: true, uniqueness: true})

  validates :composer, {presence: true}
  validates :year, {presence: true}

  #example of going through the lifecycle
  # self.before_validation(:i_am_called_before)
  # self.after_validation(:i_am_called_after)

  # def i_am_called_before
  #   puts "BEFORE VALIDATION!"
  # end

  # def i_am_called_after
  #   puts "AFTER VALIDATION!"
  # end

end

#setup the relationship between the two tables

class Song < ActiveRecord::Base
  belongs_to :musical
  has_many :performances
  #this allows AR to write join statements for us
  has_many :characters, :through => :performances
end

class Character < ActiveRecord::Base
  has_many :performances
  has_many :songs, :through => :characters
end

class Performance < ActiveRecord::Base
  belongs_to :song
  belongs_to :character

  #ensures that the song/character pair is unique
  validates :song_id{uniqueness: {:scope => :character_id, :message => "This character is already singing this song!"}}
end

#to find 
#sound_of_music = Musical.find_by(title:"The Sound of Music")

#to find all the songs in the Sound of Music
#sound_of_music.songs

#to create a new song 
#sound_of_music.songs.create(title: "Favorite Things")
#you can also append onto this, as if it's an array
#sound_of_music.songs << do_re_mi 

binding.pry

# Musical.create(title:"The Sound of Music", composer:"Richard Rodgers", year: "1940")
# Song.create(title: "The Sound of Music", musical_id: 1)
# oklahoma = Musical.new
# oklahoma.title = "Oklahoma!"
# oklahoma.composer = "Richard Rodgers"
# oklahoma.save

# bye_bye_birdie = Musical.new
# bye_bye_birdie.title = "Bye, Bye Birdie!"
# bye_bye_birdie.save

# guys_and_dolls = Musical.new
# guys_and_dolls.title = "Guys and Dolls"
# guys_and_dolls.save

# #you could also do – create automatically saves it to the table
# #guys_and_dolls = Musical.create(title: "Guys and Dolls")
# musicals = Musical.all
# puts musicals

#To Create a new Performance
#liesel_sings_do_re_mi = Performance.new(character_id: liesel.id, song_id: do_re_mi.id)
#liesel.songs << do_re_mi


#we created the new musical, Oklahoma – now we want to pop it into pry