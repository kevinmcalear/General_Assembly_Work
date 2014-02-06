require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => 'nicholasbundy',
  :password => "",
  :database => "moma_db"
  )

 class Artist < ActiveRecord::Base
  has_many :paintings
 end

 class Painting < ActiveRecord::Base
  belongs_to :artists
 end

# Artist.create([

# {name: "Vincent Van Gogh", nationality: "Dutch"},
# {name: "Pablo Picasso", nationality: "Spanish"},
# {name: "Michelangelo", nationality: "Italian"}
# ]);

# van_gogh = Artist.find_by(name: "Vincent Van Gogh")
# pablo = Artist.find_by(name: "Pablo Picasso")
# angelo = Artist.find_by(name: "Michelangelo")

# Painting.create([
 
#   {title: "Starry Night", artist_id: van_gogh.id},
#   {title: "The Old Guitarist", artist_id: pablo.id},
#   {title: "The Sistine Chapel", artist_id: angelo.id}

# ]);
# 
binding.pry


