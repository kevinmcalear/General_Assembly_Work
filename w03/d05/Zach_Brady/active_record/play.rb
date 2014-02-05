require 'pry'
require 'active_record'

# Musicals
# - title
# - composer
# - lyricist
# - year
#CLIP (command line interface program)
#List, Read (Individual Musicals), Update, Create, Destroy

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost", 
  :username => "zzzbra",
  :password => "",
  :database => "playground"
  )

class Musical < ActiveRecord::Base
end

system "clear"

puts "========================================"

puts "...Welcome to the Musicals Database..."

puts "========================================"

begin

  puts "Please choose from the following options..."
  puts ""
  puts "(I) Index - List all Musicals"
  puts "(C) Add a Musical"
  puts "(R) View all info for a specific Musical"
  puts "(U) Update a Musical"
  puts "(D) Remove a Musical"
  puts "(E) Delete those suckers who don't wear capes"
  puts "(Q) Quit"
  puts ""
  print "> "

  choice = gets.chomp.downcase


  case choice
  when "i"
    # list all musicals
    musicals = Musical.all 
    musicals.each do  |musical| 
      puts "Title: #{musical.title}"
      puts "Composer: #{musical.composer}"
      puts "Lyricist: #{musical.lyricist}"
      puts "Year: #{musical.year}"
    end

  when "c"
    # Add a musical
    puts "What's the name of the musical?"
    musical_name = gets.chomp
    puts "Who is #{musical_name}'s composer?"
    composer = gets.chomp
    puts "Who is the lyricist of #{musical_name}?"
    lyricist = gets.chomp
    puts "What year did #{musical_name}' first debut?"
    year = gets.chomp.to_i

    Musical.create(
      title: musical_name,
      composer: composer, 
      lyricist: lyricist, 
      year: year
      )

  when "r"
    # Read info for a specific musical
    #david = User.find_by(name: 'David')
    puts "Which musical would you like to learn more about?"
    musicals = Musical.all 
    musicals.each { |musical| puts musical.title }
    which_musical = gets.chomp
    which_musical = Musical.find_by(title: which_musical)
    puts which_musical
  when "u"
    #Update a musical
    # user = User.find_by(name: 'David')
    # user.update(name: 'Dave')
    puts "Which musical would you like to update?"
    musicals = Musical.all 
    musicals.each { |musical| puts musical.title }
    which_musical = gets.chomp
    which_musical = Musical.find_by(title: which_musical)
    puts "What would you like to update, title, composer, lyricist, or year?"
    category = gets.chomp.downcase
    puts "What would you like the new value to be? "
    updated_info = gets.chomp
    which_musical.update("#{category}" => updated_info)


  when "d"
    # delete a musical
    puts "Which musical would you like to delete?"
    musicals = Musical.all 
    musicals.each { |musical| puts musical.title }
    which_musical = gets.chomp
    which_musical = Musical.find_by(title: which_musical)
    which_musical.destroy
    puts "#{which_musical} has been DESTROYED. "

  when "q"
  exit
  
else
  puts ""
  puts "INVALID INPUT"
  puts ""

end
end while choice != "q"









# oklahoma = Musical.create(title: "oklahoma", composer: "", lyricist: "", year )
# sound_of_music = Musical.create(title: "The Sound of Music")
# #oklahoma.title= "Oklahoma"