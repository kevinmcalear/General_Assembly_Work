require_relative 'grammys.rb'

system "clear"

puts "****************************"
puts "Welcome to the Grammy's App!"
puts "****************************"

#Receipt.read_all("receipts.csv")

begin

  puts ""
  puts "Choose wisely..."  
  puts " A - Add a Grammy."
  puts " L - List all Grammys."
  puts " D – Delete a Grammy."
  puts " Q - Quit!"
  puts ""
  print " >"

  choice = gets.chomp.downcase

  if choice == "a"
    print "Enter year: "
    year = gets.chomp.to_i
    print "Enter category: "
    category = gets.chomp
    print "Enter artist name: "
    name = gets.chomp

    Grammy.new(year, category, name)

    #Receipt.save_all("receipts.csv")

  elsif choice == "l"
    grammys = Grammy.list_all

    if grammys.count < 1
      puts "No Grammys yet!"
    else  
      puts Grammy.list_all
    end

  elsif choice == "d"
    puts Grammy.delete
  elsif choice != "q"
    
    puts "Invalid option..."

  end

end while choice != "q"