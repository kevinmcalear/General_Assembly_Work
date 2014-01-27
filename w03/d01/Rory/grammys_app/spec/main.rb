require_relative "lib/grammys.rb"

system "clear"

puts "============================"
puts "Welcome to the Grammys App!"
puts "============================"


begin

  puts ""
  puts "What do you want to do?"  
  puts " A - Add a Grammy."
  puts " L - List all Grammys."
  puts " D - Delete a Grammy"
  puts " Q - Quit"
  puts ""
  print " >"

  choice = gets.chomp.downcase

  if choice == "a"
    print "Enter store: "
    store = gets.chomp
    print "Enter item: "
    item = gets.chomp
    print "Enter quantity: "
    quantity = gets.chomp.to_i
    print "Enter price: "
    price = gets.chomp
    print "Enter date: "
    date = gets.chomp

    Receipt.new(store, item, quantity, price, date)

    Receipt.save_all("receipts.csv")

  elsif choice == "l"
    receipts = Receipt.all

    if receipts.count < 1
      puts "No receipts yet!"
    else  
      receipts.each {|receipt| puts receipt}
    end

  elsif choice != "q"
    
    puts "Invalid option..."

  end

end while choice != "q"