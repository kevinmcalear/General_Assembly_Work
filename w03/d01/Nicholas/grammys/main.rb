require_relative "lib/grammys"

def menu
  puts"---------------------------------"
  puts"   Grammy Information Station"
  puts" (1) Create New Grammy Entry"
  puts" (2) List of the Grammys"
  puts" (3) Delete a Grammy"
  puts" (4) Quit"
 
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

  when 2
    gramlist = Grammy.list
    if gramlist.empty?
      puts "Nothing in the list yet."
    else
    gramlist.each {|artist| print "#{artist}|"}
    end

  when 3
    gramlist = Grammy.list

  end

  user_choice = menu
end
