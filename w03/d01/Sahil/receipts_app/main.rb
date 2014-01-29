require_relative "lib/receipt.rb"

system "clear"

puts "============================"
puts "Welcome to the Receipts App!"
puts "============================"

# receipts = []

begin

  puts ""
  puts "Choose wisely..."  
  puts " A - Add new receipt."
  puts " L - List all receipts."
  puts " Q - Quit!"
  puts ""
  print " > "

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