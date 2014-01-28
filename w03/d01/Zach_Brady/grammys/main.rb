require_relative "lib/grammys.rb"

system "clear"



begin 

puts ""
puts "Welcome My Own Private GRAMMY Database"
puts "A - Add a new GRAMMY entry"
puts "L - List all GRAMMYs"
puts "D - Delete a GRAMMY"
puts "Q - Quit"
puts ""
puts " > "

choice = gets.chomp.downcase

if choice == "a"
    print "Enter Year: "
    year = gets.chomp.to_i
    print "Enter category: "
    category = gets.chomp
    print "Enter winner: "
    winner = gets.chomp

    Grammys.new(year, category, winner) 
    Grammys.save_all("grammys.csv")

  elsif choice == "l"
    grammys = Grammys.list_all_grammys

    f grammys.count < 1
      puts "No records yet!"
    else  
      grammys.each {|grammy| puts grammy}
    end

  elsif choice != "q"
    
    puts "Invalid option..."

  end

end while choice != "q"

end