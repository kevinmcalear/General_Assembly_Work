require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "zzzbra",
  :password => "",
  :database => "moma_db"
  )

class Artist < ActiveRecord::Base
  self.has_many :paintings
end

class Painting < ActiveRecord::Base
  self.belongs_to :artist
end

binding.pry