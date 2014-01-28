
require_relative "lib/grammys"

system "clear"

puts "============================"
puts "Welcome to the GRAMYS"
puts "============================"

Grammy.read_all("grammys.csv")

begin

puts "1. Add a GRAMMY"
puts "2. List the GRAMMYS"
puts "3. Delete a GRAMMY"
puts "4. Quit"
# 3. `Delete a Grammy` (This option will list all the Grammys with number indices, and you choose which one to delete by entering the index.)
# 4. `Quit`
choice = gets.chomp.to_i

if choice == 1
  print "Enter the year"
  year = gets.chomp
  print "Enter the Category"
  category = gets.chomp
  print "Enter the winner"
  winner = gets.chomp
  Grammy.new(year, category, winner)
  Grammy.save_all("grammys.csv")
elsif choice == 2
  grammys = Grammy.all
  if grammys.count < 1
    puts "No GRAMMYS here"
  else 
    grammys.each { |grammy| puts grammy}
  end
elsif choice == 3
  grammys = Grammy.all
  if grammys.count < 1
    puts "No GRAMMYS here"
  else 
    puts "CHOOSE A GRAMMY TO DELETE"
    grammys.each_with_index do |grammy, index|
      print index.to_s + "   "
      puts grammy
    end
    delete_choice = gets.chomp.to_i
    Grammy.delete_grammy(delete_choice)
  end
else
  "Goodbye"
end

end while choice != 4
