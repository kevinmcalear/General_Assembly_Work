require_relative "lib/receipt.rb"

FILE_PATH = "receipts.csv"

system "clear"

puts "============================"
puts "Welcome to the Receipts App!"
puts "============================"

# receipts = []
Receipt.read_all(FILE_PATH)

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
    price = gets.chomp.to_f
    print "Enter Date: "
    date = gets.chomp

    receipts << Receipt.new(store, item, quantity, price, date)
  elsif choice == "l"
    receipts = Receipts.all

    if receipts.count < 1
      puts "No receipts yet!"
    else 
      receipts.each {|receipt| puts receipt}
    end
  elsif choice != "q"
    puts "Invalid option..."
  end

end while choice != "q"