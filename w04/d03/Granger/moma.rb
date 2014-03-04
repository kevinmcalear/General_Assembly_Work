require 'pry'
require "active_record"

ActiveRecord::Base.logger = Logger.new("./sql.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "grangerabuhoff",
  :password => "",
  :database => "moma_db"
)

class Artist < ActiveRecord::Base
  has_many :paintings
  validates :name, presence: true


end

class Painting < ActiveRecord::Base
  belongs_to :artist
  validates :title, presence: true

end


binding.pry