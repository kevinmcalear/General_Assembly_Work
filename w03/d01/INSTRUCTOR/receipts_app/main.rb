require_relative "lib/receipt.rb"
FILE_PATH = "receipts.csv"

system "clear"

puts "============================"
puts "Welcome to the Receipts App!"
puts "============================"

<<<<<<< HEAD
Receipt.read_all(FILE_PATH)
=======
Receipt.read_all("receipts.csv")
>>>>>>> b9203e2ed20746229c9c50a12ce5422bd08cd437

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

<<<<<<< HEAD
    receipts << Receipt.new(store, item, quantity, price, date)
    Receipt.save_all

  elsif choice == "l"
     receipts = Receipt.all(FILE_PATH)
     receipts.each {|r| puts r}
=======
    Receipt.new(store, item, quantity, price, date)

    Receipt.save_all("receipts.csv")

  elsif choice == "l"
    receipts = Receipt.all

    if receipts.count < 1
      puts "No receipts yet!"
    else  
      receipts.each {|receipt| puts receipt}
    end

>>>>>>> b9203e2ed20746229c9c50a12ce5422bd08cd437
  elsif choice != "q"
    
    puts "Invalid option..."

  end

end while choice != "q"