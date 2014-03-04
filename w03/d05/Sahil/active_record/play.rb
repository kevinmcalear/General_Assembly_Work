require 'pry'
require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "sahiltrikha",
  :password => "",
  :database => "playground"
)

class Musical < ActiveRecord::Base
  has_many :songs
end

class Song < ActiveRecord::Base
  belongs_to :musical
end
oklahoma = Musical.new
oklahoma.title = "Oklahoma!"
oklahoma.save
binding.pry

#advanced study - niches, cross collab, alum linkedin, communication between 
#other wdi, community app, hardware/3d printing, traditional ed (wharton class)

#internal craigslist (looking for)
#product t-shirt hackathon
#mooc-watch
#entrepreneur track?