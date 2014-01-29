require_relative "lib/grammys"
FILE_PATH = "grammy_results.csv"


grammy_selection = Grammys.print
Grammys.read(FILE_PATH)

begin
system "clear"

puts "======================="
puts "Welcome to The Grammys!"
puts "=======================\n\n"
puts "Type:\n(A) to enter a new selection,\n(L) to see the list of selections,\n(D) delete a selection or\n(Q) to quit.\n"

user_input = gets.chomp

case user_input

when "a" #add
  print "Enter year: "
  year = gets.chomp
  print "Enter category: "
  category = gets.chomp
  print "Enter your desired winner: "
  winner = gets.chomp
  Grammys.new(year, category, winner)
  Grammys.save("grammy_results.csv")

when "l" #list
  puts "\nHere are you choices:\n"
  grammy_selection.each { |selection| puts selection }
  puts "\nPress anything to continue or (Q) to quit"
  user_input = gets.chomp

when "d" #delete
  grammy_selection.each { |selection| puts selection }
  puts "\nStarting at '1' enter the position of the item you would like to delete"
  user_input = gets.chomp.to_i
  Grammys.delete_at(user_input - 1)
  Grammys.save("grammy_results.csv")
  
end


end while user_input != "q"