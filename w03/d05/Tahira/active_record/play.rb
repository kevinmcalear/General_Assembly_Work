require "active_record"
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "taidaadaya",
  :password => "",
  :database => "playground"
  )


# musicals 
# - title 
# - composer
# - lyricist
# - year

class Musical < ActiveRecord::Base


end


oklahoma = Musical.new
oklahoma.title = "Oklahoma!"
puts oklahoma.title
oklahoma.save

annie = Musical.create(title:"Annie")
binding.pry

# j@ga.co