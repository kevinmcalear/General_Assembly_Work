require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "drewtunney",
  :password => "",
  :database => "moma_db"
)

class Artist <ActiveRecord::Base
  #allows you to call the method painting
  has_many :paintings
end

class Painting <ActiveRecord::Base
  #allows you to call the method artist
  belongs_to :artist
end

# print "Artist name: "
# name = gets.chomp
# print "Artist nationality: "
# nationality = gets.chomp
# print "Painting title: "
# title = gets.chomp

# new_artist = Artist.create(name: name, nationality: nationality)




binding.pry