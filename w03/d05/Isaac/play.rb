require 'active_record'
require 'pry'
require 'pg'

conn= PG.connect( :dbname => 'playground')
conn.close


ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => 'itorresverdugo',
  :password => "",
  :database => "playground"
  )

# musicals
# - title
# List, Read, (indiv, musicals) Update, Create, Destroy 

class Musical < ActiveRecord::Base
  has_many :songs
end

class Song < ActiveRecord::Base
  belongs_to :musical 
end

choice = 0 
while choice != 6


  puts "-------------------------------------"
  puts "            MENU OPTIONS"
  puts ""
  puts " (1) List All Musicals"
  puts " (2) Info on a specific Musical"
  puts " (3) Update a Musical"
  puts " (4) Create a new Musical"
  puts " (5) Destory a Musical"
  puts " (6) Quit"
  puts ""
  puts "-------------------------------------"

  puts "What would you like to do? "
  choice = gets.chomp.to_i

  if choice == 1
    Musical.all.each {|musical| puts musical.title}

  elsif choice == 2
    Musical.all.each {|musical| puts musical.title}
    print "Enter Musical to view:"
    response = gets.chomp
    selection = Musical.find_by(title: response)
    puts "#{selection.title}, #{selection.composer}, #{selection.lyricist}, #{selection.year}"

  elsif choice == 3
    Musical.all.each {|musical| puts musical.title}
    print "Enter musical to update: "
    response = gets.chomp
    selection = Musical.find_by(title: response)
    puts "Enter a new name: "
    name = gets.chomp
    puts "Enter a new composer: "
    composer = gets.chomp
    puts "Enter a new lyricist: "
    lyricist = gets.chomp
    puts "Enter a new year: "
    year = gets.chomp
    selection.update(title: name, composer: composer, lyricist: lyricist, year: year)

  elsif choice == 4
    puts "Enter a new name: "
    name = gets.chomp
    puts "Enter a new composer: "
    composer = gets.chomp
    puts "Enter a new lyricist: "
    lyricist = gets.chomp
    puts "Enter a new year: "
    year = gets.chomp
    new_creation = Musical.create(title: name, composer: composer, lyricist: lyricist, year: year)

  elsif choice == 5
    Musical.all.each {|musical| puts musical.title}
    print "Enter musical to delete: "
    response = gets.chomp
    selection = Musical.find_by(title: response)
    selection.destroy
    puts "MUSICAL IS DESTORYED!!!!"
  end

end


def get_info
  selection = Musical.find_by(title: response)
  puts "Enter a new name: "
  name = gets.chomp
  puts "Enter a new composer: "
  composer = gets.chomp
  puts "Enter a new lyricist: "
  lyricist = gets.chomp
  puts "Enter a new year: "
  year = gets.chomp
  return "title: #{name}, composer: #{composer}, lyricist: #{lyricist}, year: #{year}"
end







