require_relative "grammys.rb"

system "clear"
puts "---------------------------"
puts "Welcome to the Grammys App!"
puts "---------------------------"

begin 
  puts "---- Menu Options ----"
  puts 
  puts "  1. Add a Grammy"
  puts "  2. List all Grammys"
  puts "  3. Delete a Grammy"
  puts "  4. Quit"
  puts 
  puts "Please enter your number choice."
  puts " >"

  choice = gets.chomp.to_i

  case choice
  when 1
    puts "What is the year the Grammy was won?"
    year = gets.chomp.to_i
    puts "What is the Grammy's category?"
    category = gets.chomp
    puts "Who won the Grammy?"
    winner = gets.chomp

    Grammy.new(year, category, winner)
    Grammy.save_list("grammy.csv")
  when 2 
    #code
  when 3
    #code
  when 4
    #code
  else
    puts "Not a valid choice. Try again!"
  end

end while choice != 4








