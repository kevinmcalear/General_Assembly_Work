require 'pry'
require_relative "grammy.rb"
FILE_PATH = "grammys.csv"

system "clear"

puts "=========================="
puts "Welcome to the Grammys App"
puts "=========================="

begin


puts "[1] Add a Grammy"
puts "[2] List all Grammys"
puts "[3] Delete a Grammy (This option will list all the Grammys with number indices, and you choose which one to delete by entering the index.)"
puts "[4] Quit" 

  choice = gets.chomp.downcase

  if choice == "1"
    print "What is the Year of the Award? "
    year = gets.chomp
    print "What is the Category? "
    category = gets.chomp
    print "Who was the winner? "
    winner = gets.chomp

    Grammy.new(year,category,winner)
    Grammy.save_all(FILE_PATH)
  
  elsif choice == "2"
    Grammy.view_all(FILE_PATH)

  end 

end while choice != "4" 
