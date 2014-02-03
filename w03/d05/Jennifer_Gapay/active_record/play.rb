require "active_record"
require'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jennifer",
  :password => "",
  :database => "playground"
)

# Musicals
# - title
# - composer
# - lyricist
# - year

# CLI
# list, read, update, create, distroy

class Musical < ActiveRecord::Base
end

bookofmormon = Musical.create(title: 'The Book of Mormon')
bookofmormon.title = "The Book of Mormon"
bookofmormon.composer = "Trey Parker"
bookofmormon.lyricist = "Trey Parker"
bookofmormon.year = 2011
bookofmormon.save

oklahoma = Musical.create(title: 'Oklahoma!')
oklahoma.title = "Oklahoma!"
oklahoma.composer = "Richard Rodgers"
oklahoma.lyricist = "Oscar Hammerstein"
oklahoma.year = 1943
oklahoma.save

begin

puts "Welcome to the musicals database"
puts ""
puts "What would you like to do?"
puts "(I) Index - List all Musicals"
puts "(A) Add a musical"
puts "(V) View all info for a specific musical"
puts "(U) Update a musical"
puts "(R) Remove a musical"
puts "(Q) Quit"

choice = gets.chomp.upcase

case choice
when "I"
  musicals = Musical.all
  musicals.each {|value| puts "title: #{value.title} composer: #{value.composer} lyricist: #{value.lyricist} year: #{value.year}" }


when "A"  
  puts "What musical would you like to add?"
  title_to_add = gets.chomp
  puts "Who is the composer?"
  composer = gets.chomp
  puts "Who is the lyricist?"
  lyricist = gets.chomp
  puts "What year was it released?"
  year = gets.chomp

  new_item = Musical.create(title: title_to_add)
  new_item.title = "#{title_to_add}"
  new_item.composer = "#{composer}"
  new_item.lyricist = "#{lyricist}"
  new_item.year = "#{year}"
  new_item.save

when "V"
  puts "What musical would you like info for?"
  response = gets.chomp
  output = Musical.find_by(title: "#{response}")
  puts "#{output.title}, #{output.composer}, #{output.lyricist}, #{output.year}."

when "U"
  puts "What musical would you like to update?"
  name = gets.chomp
  puts "What would you like to update?"
  response = gets.chomp.downcase
    if response == "title"
      puts "What is the new title?"
      new_title = gets.chomp
      musical = Musical.find_by(title: name)
      musical.update(title: "#{new_title}")

    elsif response == "composer"
      puts "What is the new composer?"
      new_composer = gets.chomp
      musical = Musical.find_by(title: name)
      musical.update(composer: "#{new_composer}")

    elsif response == "lyricist"
      puts "What is the new lyricist?"
      new_lyricist = gets.chomp
      musical = Musical.find_by(title: name)
      musical.update(lyricist: "#{new_lyricist}")

    elsif response == "year"
      puts "What is the new year?"
      new_year = gets.chomp
      musical = Musical.find_by(title: name)
      musical.update(year: "#{new_year}")

    else 
      puts "That is not a valid choice"      
    end

when "R"
  puts "Which musical would you like to delete?"
  response = gets.chomp
  musical = Musical.find_by(title: response)
  musical.destroy

end 
end while choice != "Q"