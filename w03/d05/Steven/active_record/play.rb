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

class Song < ActiveRecord::Base

end



# def get_user_input(attributes)
#   user_input = {}
#   [:title, :lyricist, :composer, :year].each do |attribute|
#     print "#{attribute.to_s.capitalize}:"
#     user_input[attribute] = gets.chomp
# end

#   return user_input
# end

# get_user_input(Musical.attribute_names)


# oklahoma = Musical.new
# oklahoma.title = "Oklahoma!"
# oklahoma.save

#oklahoma = Musical.create(title: "Oklahoma!")

#binding.pry


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


case response
  when "1" 
    Musical.all.each do |musical|
      puts "#{musical.title}, #{musical.composer}, #{musical.lyricist} #{musical.year}"
    end
  
  when "2"
    Musical.all.each {|musical| puts musical.title}
  print "Enter musical"
  movie_title = gets.chomp
  new_musical = Musical.where(title = '#{movie_title}')

  new_musical.each do |musical|
    puts "#{musical.title}...etc"
  end

  when "3"
    Musical.all.each do |musical|
      puts "#{musical.title}"
    end
    puts "Which musical would you like to update?"
    musical_name = gets.chomp
    puts "what attribute you like to change composer to?"
    attribute = gets.chomp
    puts "what would you like to change it to?"
    new_attribute = gets.chomp
    selection = Musical.find_by(title: "#{musical_name}")
    selection.update("#{attribute}" => "#{new_attribute}")

  when 4



  when 5
    Musical.all.each do |musical|
      puts "#{musical.id} #{musical.title}"
    end
    puts "which musical would you like to delete?"


   
end
  
response = gets.chomp.to_i

end








