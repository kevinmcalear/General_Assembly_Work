require 'pry'
require "active_record"

ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  host:     "localhost",
  username: "drewtunney",
  password: "",
  database: "playground"
  )

class Musical < ActiveRecord::Base
  has_many :songs
  
end

class Song <ActiveRecord::Base
  belongs_to :musical 

end

def input_for_musical(musical = Musical.new)
  print "Title: "
  title = gets.chomp
  print "Lyricist: "
  lyricist = gets.chomp
  print "Composer: "
  composer = gets.chomp
  print "Year: "
  year = gets.chomp

  return musical = Musical.new(title: title, lyricist: lyricist, composer: composer, year: year)
end

puts "Pick an option by letter: "

puts "L)ist"
puts "C)reate"
puts "R)ead"
puts "U)pdate"
puts "D)elete"


choice = gets.chomp.downcase

case choice
when "l"
  Musical.all.sort_by(&:id).each do |musical|
    puts "#{musical.title} "
  end
when "c"
  input_for_musical.save

when "r"
    Musical.all.each do |musical|
        puts "#{musical.id} #{musical.title} "
    end
    print "Pick the musical by number: "
    num_choice = gets.chomp.to_i

    picked_musical = Musical.find_by_id(num_choice)

    puts "#{picked_musical.title} lyricist: #{picked_musical.lyricist}  composer: #{picked_musical.composer} year: #{picked_musical.year} "

  when "u"
        Musical.all.each do |musical|
        puts "#{musical.id} #{musical.title} "
    end
    print "Pick the musical by number: "
    num_choice = gets.chomp.to_i

    update_musical = Musical.find_by_id(num_choice)

    modified_musical = input_for_musical(update_musical)

    modified_musical.id = update_musical.id
    update_musical.destroy
    modified_musical.save

  when "d"
        Musical.all.each do |musical|
        puts "#{musical.id} #{musical.title} "
    end
    print "Pick the musical by number: "
    num_choice = gets.chomp.to_i

    Musical.find_by_id(num_choice).destroy



end