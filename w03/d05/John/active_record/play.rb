require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "johnhinrichs",
  :password => "",
  :database => "playground"
  )

# Musicals
# - title
# - composer
# - lyricist
# - year

class Musical < ActiveRecord::Base
  
  

end

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
    binding.pry
    musical.update_attributes("#{atrb}" => "#{update_info}")


  when 'c'


  when 'd'

  end

end
