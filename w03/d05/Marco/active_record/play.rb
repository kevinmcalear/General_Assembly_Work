require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "mpvazquez",
  :password => "",
  :database => "playground"
  )

# Musicals
# - title
# - composer
# - lyricist
# - year

class Musical < ActiveRecord::Base
  has_many :songs
end
  
class Song < ActiveRecord::Base
  belongs_to :musical
end

binding.pry


# singin_rain = Musical.create(:title => "Singin in the Rain", :composer => "George Gershwin", :lyricist => "Arthur Freed", :year => 1952)


# oklahoma = Musical.new
# oklahoma.title = "Oklahoma!"
# puts oklahoma.title


choice = ''
while choice != 'q'

  puts "Select an option: "
  puts "(l) List all"
  puts "(f) Find individual musical"
  puts "(u) Update musical"
  puts "(c) Create musical"
  puts "(d) Delete musical"
  puts "(q) Quit"
  choice = gets.chomp.downcase

  case choice
  when 'l'
    musicals = Musical.all
    musicals.each do |musical|
      puts "#{musical.title}, #{musical.composer}, #{musical.lyricist}, #{musical.year}"
    end

  when 'f'
    puts "Enter Musical Title:"
    get_title = gets.chomp

    finder = Musical.where(title: "#{get_title}")
    finder.each do |musical|
    puts "#{musical.title}, #{musical.composer}, #{musical.lyricist}, #{musical.year}"
  end

  when 'u'
    puts "Enter title of Musical to update"
    get_title = gets.chomp
    puts "Which attribute do you want to update?"
    atrb = gets.chomp
    puts "What is the new information?"
    update_info = gets.chomp

    musical = Musical.find_by(title: "#{get_title}")
    # binding.pry
    musical.update_attributes("#{atrb}" => "#{update_info}")


  when 'c'
    puts "Please enter title of Musical"
    get_title = gets.chomp
    puts "Please enter Composer"
    get_composer = gets.chomp
    puts "Please enter Lyricist"
    get_lyricist = gets.chomp
    puts "Please enter year"
    get_year = gets.chomp.to_i

    musical = Musical.create(title: "#{get_title}", composer: "#{get_composer}", lyricist: "#{get_lyricist}", year: "#{get_year}")

  when 'd'
    puts "Please enter title of Musical"
    get_title = gets.chomp

    musical = Musical.find_by(title: "#{get_title}")
    musical.destroy

  end

end

# require 'active_record'
# require 'pry'

# ActiveRecord::Base.establish_connection(
#   :adapter => "postgresql", 
#   :host => "localhost", 
#   :username => "mpvazquez",
#   :password => "", 
#   :database => "playground"
#   )

# class Musical < ActiveRecord::Base

# end

# oklahoma = Musical.new
# oklahoma.title = "Oklahoma!"
# # puts oklahoma.title
# # oklahoma.save

# # binding.pry

# # grease = Musical.create(title: "Grease")
# sound_of_music = Musical.new
# sound_of_music.title = "Sound of Music"
# # sound_of_music.sunless ARGV.
#   abort "Usage:  #{$PROGRAM_NAME} ARGS_GO_HERE"
# endave

# little_shop_of_horrors = Musical.create(title: "Little Shop of Horrors")
