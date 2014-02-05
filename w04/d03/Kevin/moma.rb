require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "kevinmcalear",
  :password => "",
  :database => "moma_db"
  )

class  Artist < ActiveRecord::Base
  has_many :paintings
end

class  Painting < ActiveRecord::Base
  belongs_to :artist
end

binding.pry