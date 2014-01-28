require_relative "lib/grammys.rb"

system "clear"

puts "**************************"
puts "It's The Grammy's App"
puts "**************************"

begin

puts
puts "A: for Add A Grammy"
puts "L: for list all Grammys"
puts "D: for delete a Grammy"
puts "Q: for quit app"
puts

choice = gets.chomp.downcase

case choice
  when "a"
    puts "Enter a year: "
    year = gets.chomp
    puts "Enter a category: "
    category = gets.chomp
    puts "Enter a winner: "
    winner = gets.chomp

    Grammy.new(year, category, winner)

  when "l"
    grammys = Grammy.all
    grammys.each {|grammy| puts grammy}

  when "d"
    grammys = Grammy.all
    grammys.each_index {|grammy|  puts grammy} 
    puts "Enter the corresponding number to delete entry: "
    choice = gets.chomp
    Grammy.all.delete[choice]

  when "q"
    #quit
  end

  end while choice != "q"