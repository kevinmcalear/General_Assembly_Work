require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "johnhinrichs",
  :password => "",
  :database => "moma_db"
)

class Artist < ActiveRecord::Base
  has_many :paintings
end

class Painting < ActiveRecord::Base
  belongs_to :artist
end


Artist.create(:name => "Vincent Van Gogh", :nationality => "Dutch")
Artist.create(:name => "Frida Kahlo", :nationality => "Mexican")
Artist.create(:name => "Pablo Picasso", :nationality => "Spanish")


Painting.create(:title => "Starry Night", :artist_id => 1)
Painting.create(:title => "Self Portait", :artist_id => 2)
Painting.create(:title => "Blue Nude", :artist_id => 3)

binding.pry

