require 'pry'
require "active_record"

ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  host:    "localhost",
  username: "jeff",
  password: "",
  database: "playground"
  )

class Musical < ActiveRecord::Base

end

def get_user_input(attributes)
  user_input = {}

  attributes.each do |attribute|
    print "#{attribute.capitalize}:"
    user_input[attribute] = gets.chomp
  end

  return user_input
end

#get_user_input([:title, :lyricist, :composer, :year])
get_user_input(Musical.attribute_names)

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
  Musical.create(input_for_musical())

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

  musical = Musical.find_by_id(num_choice)

  musical.update(input_for_musical())
  # Bad things will happen ^-^ : modified_musical.id = update_musical.id

when "d"
  Musical.all.each do |musical|
    puts "#{musical.id} #{musical.title} "
  end

  print "Pick the musical by number: "
  num_choice = gets.chomp.to_i

  Musical.find_by_id(num_choice).destroy
end