require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "julia",
  :password => "",
  :database => "playground"
  )

#First we need to create a database (playground)

#Create a singular class
#We created the plural table musucals – CREATE TABLE musicals (id serial PRIMARY KEY, title varchar(100));

#We need to set Musical to inherit from ActiveRecord::Base

#We want to add:
# – title
# – composer
# – lyricist
# – year

#CLI program
# – List
# – Read
# – Update
# – Create
# – Destroy

class Musical < ActiveRecord::Base


def to_s
  return "#{title}, #{composer}, #{lyricist}, #{year}"
end

def self.list_all
  all_musicals = Musical.all.to_a
  all_musicals.each {|musical| puts musical}
end

def self.add_musical 
  puts "What is the name of the musical?"
  title = gets.chomp
  puts "Who is the composer?"
  composer = gets.chomp
  puts "Who is the lyricist?"
  lyricist = gets.chomp
  puts "When was it produced?"
  year = gets.chomp

  new_musical = Musical.create(title: title, composer: composer, lyricist: lyricist, year: year)
end

end
puts "What would you like to do?"
puts "List, Read, Update, Create, Destroy"



oklahoma = Musical.new
oklahoma.title = "Oklahoma!"
oklahoma.composer = "John Doe"
oklahoma.lyricist = "Sally"
oklahoma.year = "1942"
oklahoma.save

bye_bye_birdie = Musical.new
bye_bye_birdie.title = "Bye, Bye Birdie!"
bye_bye_birdie.composer = "Sandy"
bye_bye_birdie.lyricist = "Julia"
bye_bye_birdie.year = "1923"
bye_bye_birdie.save

puts Musical.list_all

puts Musical.add_musical


binding.pry
