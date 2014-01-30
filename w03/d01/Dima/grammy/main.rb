require_relative"lib/grammy.rb"

FILE_PATH = "grammy.csv"

puts "######################"
puts "Welcome to grammy app."
puts "#######################"

Grammy.read_winners(FILE_PATH)

begin

  puts "Please choose your option by entering lowercase first letter"
  puts "A - Add a Grammy"
  puts "L - List all Grammys"
  puts "D - Delete a Grammy"
  puts "Q - Quit"
  puts ""
  print ">"
  option = gets.chomp.downcase

  case option
  when "a"
    puts "Please enter a year"
    year = gets.chomp
    puts "Please enter category"
    category = gets.chomp
    puts "And please enter the winner"
    winner = gets.chomp

    Grammy.new(year, category, winner)

    Grammy.save_winners(FILE_PATH)
  when "l"
    grammys = Grammy.all_winners

    if grammys.length < 1
      puts "Please add one first"
    else
      Grammy.list
    end

  when "d"
    puts "Please enter number of the person you'd like to delete"
    key = gets.chomp
    delete(key)
  when "q"
    puts "Good bye"
  else
    puts "Please choose something else"
  end
end while option != "q"

