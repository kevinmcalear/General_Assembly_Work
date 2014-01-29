require_relative "lib/receipt.rb"

system "clear"

puts "============================"
puts "Welcome to the Receipts App!"
puts "============================"

begin

  puts ""
  puts "Choose wisely..."  
  puts " A - Add new receipt."
  puts " L - List all receipts."
  puts " Q - Quit!"
  puts ""
  print " >"

  choice = gets.chomp.downcase

  if choice == "a"
    print "Enter Store: "
    store = gets.chomp

    print "Enter Item: "
    item = gets.chomp

    print "Enter Quantity: "
    quantity = gets.chomp.to_i

    print "Enter Price: "
    price = gets.chomp

    print "Enter Date: "
    date = gets.chomp

    receipt = Receipt.new(store, item, quantity, price, date)
  elsif choice == "l"
    puts receipt
  elsif choice != "q"
    puts "Invalid option..."
  end

end while choice != "q"