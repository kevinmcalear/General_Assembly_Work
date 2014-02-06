require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "julia",
  :password => "",
  :database => "moma_db"
  )

class Artist < ActiveRecord::Base
  #{dependent: :destory}
  has_many(:paintings)

end

class Painting < ActiveRecord::Base
  belongs_to :Artist

end

binding.pry
