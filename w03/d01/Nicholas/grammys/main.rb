require_relative "lib/grammys"
Grammy.read_info("grams.csv")

def menu
  puts"---------------------------------"
  puts"   Grammy Information Station"
  puts" (1) Create New Grammy Entry"
  puts" (2) List of the Grammys"
  puts" (3) Delete a Grammy"
  puts" (4) Quit"
  puts"---------------------------------"
 
  user_choice = gets.chomp
  return user_choice.to_i 
end
user_choice = menu

while user_choice != 4

  case user_choice

  when 1
    puts "Add Grammy Info!"
    print "What is the category to add? "
    category = gets.chomp
    print "Who is the winning artist? "
    winner = gets.chomp
    print "What year did the artist win? "
    year = gets.chomp.to_i
    Grammy.new(year, category, winner)
    Grammy.save_info("grams.csv")

  when 2
    gramlist = Grammy.list
    if gramlist.empty?
      puts "Nothing in the list yet."
    else
    gramlist.each {|artist| puts "#{artist}"}
    end

  when 3
    gramlist = Grammy.list
    if gramlist.empty?
      puts "No Grammy's to delete!"
    else
      puts "Enter the number you want to remove"
      gramlist.each_with_index {|grammy, index| puts "#{index}. #{grammy}"}
      index = gets.chomp.to_i
    end

    Grammy.delete(index)
    Grammy.save_info("grams.csv")
  else
    puts "Not a choice!"
  end
  user_choice = menu
end
