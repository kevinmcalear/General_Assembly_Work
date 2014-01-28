require_relative "lib/receipt.rb"

system "clear"

puts "============================"
puts "Grammys Database"
puts "============================"

begin

  puts ""
  puts "Please select an option"  
  puts " A - Add award record"
  puts " L - List all award records"
  puts " Q - Quit!"
  puts ""
  print " >"

  choice = gets.chomp.downcase

  if choice == "a"
    print "Enter year: "
    year = gets.chomp
    print "Enter category: "
    category = gets.chomp
    print "Enter winner: "
    winner = gets.chomp

    Grammy.new(year, category, winner)

    Grammy.save_all("receipts.csv")

  elsif choice == "l"
    grammys = grammy.all

    if grammys.count < 1
      puts "No award records in database!"
    else  
      grammys.each {|grammy| puts grammy}
    end

  elsif choice != "q"
    
    puts "Please select a valid option"

  end

end while choice != "q"