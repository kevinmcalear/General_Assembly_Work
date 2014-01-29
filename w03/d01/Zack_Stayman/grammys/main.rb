require_relative "lib/grammy.rb"

system "clear"
FILE_PATH = "grammy.csv"



begin

  puts ""
  puts " A - Add new award."
  puts " L - List all awards."
  puts " D - Delete a Grammy."
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
Grammy.save(FILE_PATH)

  elsif choice == "l"
    grammys = Grammy.load(FILE_PATH)


    if Grammy.all.count < 1
      puts "No Grammys yet!"
    else  
      Grammy.all.each {|award| puts award.to_s}
    end

  elsif choice == "d"
    Grammy.load(FILE_PATH)
    Grammy.all.each {|award| puts award.to_s}
    print "please enter the number line that the award appears on: "
    to_delete = gets.chomp.to_i
    Grammy.delete_at(to_delete-1)
    Grammy.save(FILE_PATH)

  elsif choice != "q"
    
    puts "Invalid option..."

  end

end while choice != "q"