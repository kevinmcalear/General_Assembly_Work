require_relative "lib/grammys.rb"
FILE_PATH = "list.csv"

system "clear"
puts 
puts 
puts "             W E L C O M E     T O     T H E .  .  ."
puts 
puts                                                                                                                               
puts " ####   #####       #     ##     ##  ##     ##  ### ###   #### "
puts " #   #    #   #      #      ##   ##    ##   ##    #   #   #   # "
puts "#         #   #     # #     ##   ##    ##   ##     # #    ##    "
puts "#         ####      ###     # # # #    # # # #     # #     ###  "
puts "#   ###   #  #     #   #    # # # #    # # # #      #        ## "
puts " #   #    #   #    #   #    #  #  #    #  #  #      #     #   # "
puts "  ####   ###  ##  ### ###  ### # ###  ### # ###    ###    ####  "
puts
puts
puts "                        A P P ! ! !"
puts 
puts "*******************************"
puts "TIME TO CHOOSE AN OPTION"
puts "*******************************"

Grammy.read_list(FILE_PATH)
grammys = Grammy.list
begin

puts   
puts " **  A  **  A D D  A  G R A M M Y ."
puts
puts " **  L  **  L I S T  A L L  G R A M M Y S ."
puts
puts " **  D  **  D E L E T E  A  G R A M M Y ."
puts
puts " **  Q  **  Q U I T  T H I S  A P P ."
puts 
print "📀 : "

selection = gets.chomp.upcase


if selection == "A"
   system "clear"
    print "📀  The Grammy's Year: "
    year = gets.chomp
    print "📀  The Grammy's Category: "
    category = gets.chomp
    print "📀  The Grammy's Winner: "
    winner = gets.chomp
    Grammy.new(year, category, winner)
    

    Grammy.save_list(FILE_PATH)

  elsif selection == "L"
    system "clear"
    if grammys.count < 1
      puts "THERE ARE NO GRAMMYS IN THE SYSTEM YET... ADD SOME!"
    else
      grammys.each { | grammy | puts grammy.print}
    end
  elsif selection == "D"
    system "clear"
    index = 0
    if grammys.count < 1
      puts "THERE ARE NO GRAMMYS TO DELETE YET!"
    else
      grammys.each { | grammy | puts grammy.print + "   -- INDEX NUMBER: #{grammys.index(grammy)}" }
    end
    print "📀 The Grammy's Index Number To Be Deleted: "
    choice = gets.chomp.to_i
    Grammy.delete(choice)
    Grammy.save_list(FILE_PATH)
  elsif selection != "Q"
    system "clear"
    puts "SORRY, WE DONT KNOW WHAT THAT MEANS CHAMP!"
  end

end while selection != "Q"
























                                                                