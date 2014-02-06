require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "coryhaber",
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

# Artist.create(
#   [
#     { name: "Vincent Van Gogh", nationality: "Dutch"},
#     { name: "Pablo Picasso", nationality: "Spanish"},
#     { name: "JMW Turner", nationality: "British"}
#   ]
# )



