require 'pry'
require "active_record"


ActiveRecord::Base.logger = Logger.new("./sql.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "michaelwagner",
  :password =>  "",
  :database => "playground"
)

#Musicals
# - title

##Implement validations for composer and year.  
##No two musicals can have the same title. 

class Musical < ActiveRecord::Base
  has_many :songs
  self.validates(:title, {presence: true} )
  self.validates(:composer, {presence: true} )
  self.validates(:year, {presence: true} )
  self.validates_uniqueness_of :title
  
  self.before_validation(:i_am_called_before)
  self.after_validation(:i_am_caled_after)

  # def i_am_called_before
  #   puts "BEFORE VALIDATION!!"
  # end 

  # def i_am_called_after
  #   puts "AFTER VALIDATION!!"
  # end 

end 

class Song < ActiveRecord::Base
  belongs_to :musical
  has_many :performances
  has_many :chracters, :through => :peformances
end 

class Character < ActiveRecord::Base
  has_many :performances
  has_many :songs, :through = :performances
end 

class Performance < ActiveRecord::Base
  belongs_to :song
  belongs_to :character
  validates(:song, { uniqueness: {scope: :character :message=>"This character is already singing this song" } })
  # Active Record finds the Character class
  # and uses it for association behaviors. 

end 



# ##Saves to Active Record
# oklahoma = Musical.new
# oklahoma.title = "Oklahoma!"
# oklahoma.save

# ##Does not save to Active Record
# bubbles = Musical.create
# bubbles.title = "Bubbles!"

# ##Saves to Active Record
# bubbles = Musical.create(:title => "Bubbles!")

# ##Get an array of all objects
# # Musical.all

# ##TEST add new attributes
# funny = Musical.create(:title => "Funny", :composer => "Jon")


binding.pry


CREATE TABLE characters(
  id serial primary key,
  name varchar(100)
);

CREATE TABLE performances(
  id serial primary key, 
  song_id integer references songs(id),
  character_id integer references character(id)
);







do_re_mi