require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
adapter: "postgresql",
host: "localhost",
username: "QBreezy",
password: "sparky129",
database: "moma_db"
)

class Artist < ActiveRecord::Base
  has_many :paintings
  Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
  Artist.create(name: "Pablo Picasso", nationality: "Spainish")
  Artist.create(name: "Vincent Van Gogh", nationality: "Dutch")
end

class Painting < ActiveRecord::Base
  belongs_to :artist
end

binding.pry