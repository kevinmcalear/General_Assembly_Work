require_relative "lib/receipt.rb"

system "clear"

FILE_PATH = "receipts.csv"

puts "============================"
puts "Welcome to the Receipts App!"
puts "============================"



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
    print "enter store: "
    store = gets.chomp
    print "enter item: "
    item = gets.chomp
    print "enter quantity: "
    quantity = gets.chomp
    print "enter price: "
    price = gets.chomp.to_i
    print "enter date: "
    date = gets.chomp
    Receipt.new(store, item, quantity, price, date)

    Receipt.save_all(FILE_PATH)

  elsif choice == "l"
    receipts = Receipt.all
    if receipts.count > 0
      receipts.each {|receipt| puts "Receipt: #{receipt}"}
    else
      puts puts "No receipts yet"
    end
  elsif choice != "q"
    puts "Invalid option..."
  end

end while choice != "q"