require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "taidaadaya",
  :password => "",
  :database => "playground"
  )

class Musical < ActiveRecord::Base
end

def print_musical(musical)
 Musical.all.each do |musical|
  puts "Title: #{musical.title}, Composer: #{musical.composer}, Lyricist: #{musical.lyricist}, Year: #{musical.year}"
end
end


system "clear"

puts "============================"
puts "Musicals Database"
puts "============================"


begin

  puts ""
  puts "Please select an option"  
  puts "I - List all Musicals"
  puts "C - Add a Musicals"
  puts "R - View all info for a specific Musical"
  puts "U - Update a Musical"
  puts "D - Delete a Musical"
  puts "Q"
  print "> "

  choice = gets.chomp.downcase

  if choice == "i"

    print_musical(Musical.all)

  elsif choice == "c"

    print "Enter title: "
    title = gets.chomp
    print "Enter composer: "
    composer = gets.chomp
    print "Enter lyricist: "
    lyricist = gets.chomp
    print "Enter year: "
    year = gets.chomp.to_i

    Musical.create(title: title, composer: composer, lyricist: lyricist, year: year) 

  elsif choice == "r"

    puts "Enter title: "
    a = Musical.where(title: gets.chomp)
    print_musical(a)

  elsif choice == "u"
    puts "Enter musical title:"
    title = gets.chomp
    puts "What do you want to update?"
    puts "Title, Composer, Lyricist, Year"
    update_attribute = gets.chomp.downcase
    puts "What do you want to change value to?"
    change = gets.chomp

    musical = Musical.find_by(:title => title)
    musical.update(update_attribute.to_sym => change)

  elsif choice == "d"
    puts "Enter musical name:"
    entered_name = gets.chomp

    musical = Musical.find_by(title: entered_name)
    musical.destroy

  elsif choice != "q"

    puts "Please select a valid option"

  end

end while choice != "q"