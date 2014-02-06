require 'pry'
require "active_record"

ActiveRecord::Base.logger = Logger.new("./sql.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jennifer",
  :password => "",
  :database => "moma_db"
)

class Artist < ActiveRecord::Base
  self.has_many  :paintings
end

class Painting < ActiveRecord::Base
  belongs_to :artist
end

binding.pry