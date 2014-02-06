require 'pry'
require "active_record"

# to run sql file - psql -d moma_db -f moma.sql

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "stevenweiss",
  :password => "",
  :database => "moma_db"
  )


class Artist < ActiveRecord::Base
  has_many :paintings

end


class Painting < ActiveRecord::Base
  belongs_to :artist

end

binding.pry


Artist.all
Painting.all

Artist.find_by(id: 2)
Artist.find_by(name: "Vincent Van Gogh")
Artist.where(nationality: "Spanish")

Painting.find_by(id: 1)
Painting.find_by(name: "Guernica")

Painting.where(artist_id: 1)




