require_relative 'lib/grammys_app'

begin

  puts "=============================
  Welcome to the Grammys App!
  Please select an option number below:

  (1) Add a Grammy
  (2) List all Grammys
  (3) Delete a Grammy
  (4) Quit
  "
  response = gets.chomp.to_i

  case response
    when 1
      print "Year: "
        year = gets.chomp.to_i
      print "Category: "
        cat = gets.chomp.downcase
      print "Winner: "
        winner = gets.chomp.downcase
      added_grammy = Grammys.new(year, cat, winner)
      puts "-----------------------------"
      puts added_grammy
    when 2
      puts "-----------------------------"
      puts Grammys.list
      
    when 3
      counter = 1
      i = Grammys.list.count
      
      while i > 0
        
        puts "-----------------------------"
        puts "#{counter}. #{Grammys.list[i]}"
        counter +=1
        i -= 1
      end

      puts "Please enter number of Grammy entry to delete."
       number = gets.chomp.to_i

       Grammys.list.delete(2)
    when 4
  end


end while response != 4