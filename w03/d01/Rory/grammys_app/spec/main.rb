require_relative "../lib/grammys.rb"

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
    print "Enter year: "
    year = gets.chomp.to_i
    print "Enter category: "
    category = gets.chomp
    print "Enter winner, with arist and album separate by comma: "
    winner = gets.chomp

    Grammys.new(year, category, winner)

    Grammys.save_all("grammys.csv")

  elsif choice == "l"
    grammys = Grammys.all

    if grammys.count < 1
      puts "No grammys in the system yet!"
    else  
      grammys.each {|grammy| puts grammy}
    end

  elsif choice == "d"
    grammys = Grammys.all
    if grammys.count < 1
      puts "No grammys in the system yet!"
    else
      puts "Choose which grammy to delete by entering the index."
      grammys.each{|grammy|puts grammy + grammys[grammy]}
      chosen_index = gets.chomp
      grammys.delete_at(chosen_index)
    end

  elsif choice != "q"
    
    puts "Invalid option"

  end

end while choice != "q"