require "active_record"
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "zacharystayman",
  :password => "",
  :database => "playground"
  )

# Musicals
#  title

class Musical < ActiveRecord::Base
  has_many :songs  
end

class Song < ActiveRecord::Base
  belongs_to :musical
end

binding.pry