require 'pry'
require "active_record"

ActiveRecord::Base.establish_connection(
:adapter => "postgresql",
:host => "localhost",
:username => "stevenweiss",
:password => "",
:database => "playground"
  )
#Musicals
# -title
# -composer
# -lyricist
# -year released
#(changing schema)

class Musical < ActiveRecord::Base

end


response = ""
while response != 6

puts "Musicals!"
puts "1 - list musicals"
puts "2 - Read(individual musicals)"
puts "3 - update a musical"
puts "4 - Create new musical"
puts "5 - Destroy a musical"
puts "6 - Quit"
response = gets.chomp

if choice ==1
  Musical.all.each {|musical| puts musical.title}




