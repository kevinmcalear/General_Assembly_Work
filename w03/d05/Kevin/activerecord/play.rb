require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "kevinmcalear",
  :password => "",
  :database => "playground"
  )

# Musicials
# -  title
# - composer 
# - lyricist
# - year

# Write a command line interface programm that allows you to CRUD stuff.

class Musical < ActiveRecord::Base
  has_many :songs
end

class Song < ActiveRecord::Base
  belongs_to :musicial
end
musical_name = Musical.create( title: "Blah")
song = musical_name.songs.create(title: "sup", :whateves "yo")


# oklahoma = Musical.new

# oklahoma.title = "Oklahoma"

Musical.create(title: "YOUDS:lTESETESTESTSETESTESTESTSETEOUFDOSYDFOS")
# kevins_musical = Musical.create(poop: "Kevin's Sing A Long")

# binding.pry