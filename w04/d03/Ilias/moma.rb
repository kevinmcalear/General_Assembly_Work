require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'moma_db',
  username: 'eLights',
  password: '',
  host: 'localhost'
)

class Artist < ActiveRecord::Base
  has_many :paintings
end

class Painting < ActiveRecord::Base
  belongs_to :artist
end

binding.pry
