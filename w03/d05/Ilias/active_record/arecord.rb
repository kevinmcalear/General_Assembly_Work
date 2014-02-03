require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
:adapter => "postgresql",
:host => "localhost",
:username => "eLights",
:password => "",
:database => "playground"
)

# Musicals
# -title
# -compose
# -lyricist
# -year

class Musical < ActiveRecord::Base
  def title
  end
end

binding.pry

# List, Read (indv. musicals), update, create, destroy

begin
system "clear"
puts "Musicalzz :)"
puts "Select your choice (C)reate, (R)ead, (U)pdate, (D)estroy!!"
choice = gets.chomp.upcase

  case choice
  when "C"
    print "Enter the title of your musical: "
    title = gets.chomp.capitalize
    musical_new = Musical.create(title: "#{title}")
    puts "press anything to continue"
    prompt = gets.chomp
  when "R"
    i = 1
    Musical.all.each do |e|
      puts "#{i}." + "#{e[:title]}"
      i += 1
    end
    puts "Enter the num of the title that you want to see:"
    puts "press anything to continue"
    prompt = gets.chomp
  when "U"
    i = 1
    Musical.all.each do |e|
     puts "#{i}." + "#{e[:title]}"
     i += 1
    end
    puts "Enter the num of the title you wish to update"
    update = gets.chomp.to_i
    puts "What do you want to change #{Musical.all[update-1][:title]}'s title to?"
    new_title = gets.chomp.capitalize
    Musical.all[update-1][:title] = "#{new_title}"
    Musical.all[update-1].save
    puts "The new title name has been changes to #{Musical.all[update-1][:title]}!"
    puts "press anything to continue"
    prompt = gets.chomp
  when "D"
    Musical.all.each do |e|
     puts "#{e[:id]}." + "#{e[:title]}"
    end
    puts "Enter the num of the title you wish to destroy"
    update = gets.chomp.to_i
    dest_title = Musical[(update-1)][:title]
    destroy_instance = Musical[update-1]
    destroy_instance.destroy
    puts "#{dest_title} has been removed!"
    puts "press anything to continue"
    prompt = gets.chomp
  end

end while choice != "Q"
