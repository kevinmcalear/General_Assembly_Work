require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jenndodd",
  :password => "",
  :database => "moma_db"
)

class Artist < ActiveRecord::Base
  has_many :paintings
end

class Painting < ActiveRecord::Base
  belongs_to :artist
end

# Artist.create(
#   [
#   {name: "Rene Magritte", nationality: "Belgian"},
#   {name: "Paul Klee", nationality: "Swiss"},
#   {name: "Salvador Dali", nationality: "Spanish"}
#  ]
# )

# magritte = Artist.find_by(name: "Rene Magritte")
# klee = Artist.find_by(name: "Paul Klee")
# dali = Artist.find_by(name: "Salvador Dali")

# Painting.create(
#   [
#   {title: "The Trechery of Images", artist_id: magritte.id},
#   {title: "Ancient Sound, Abstract on Black", artist_id: klee.id},
#   {title: "The persistence of Memory", artist_id: dali.id}
#  ]
# )

# magritte.Painting.create(title: "The Trechery of Images")
# klee.Painting.create(title: "Ancient Sound, Abstract on Black")

binding.pry

