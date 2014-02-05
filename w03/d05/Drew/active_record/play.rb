require 'pry'
require "active_record"

ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  host:     "localhost",
  username: "drewtunney",
  password: "",
  database: "playground"
  )

# 1. Create a database
# 2. Create a table

### Musicals ###
# title

class Musical < ActiveRecord::Base

end

oklahoma = Musical.create(title: "Oklahoma")

binding.pry