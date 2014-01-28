require_relative "grammys.rb"

system "clear"
puts "---------------------------"
puts "Welcome to the Grammys App!"
puts "---------------------------"

begin
  puts 
  puts "---- Menu Options ----"
  puts 
  puts "  1. Add a Grammy"
  puts "  2. List all Grammys"
  puts "  3. Delete a Grammy"
  puts "  4. Quit"
  puts 
  puts "Please enter your number choice."
  print " >"

  choice = gets.chomp.to_i

  case choice
  when 1
    system "clear"
    puts "What is the year the Grammy was won?"
    year = gets.chomp.to_i
    puts "What is the Grammy's category?"
    category = gets.chomp
    puts "Who won the Grammy?"
    winner = gets.chomp

    Grammy.new(year, category, winner)
    Grammy.save_list("grammy.csv")
  when 2 
    system "clear"
    if Grammy.list.count < 1
      puts "There are no Grammys to list."
    else
      puts Grammy.list
    end
  when 3
    system "clear"
    if Grammy.list.count < 1
      puts "There are no Grammys to delete."
    else
      puts "Choose the Grammy to delete:"
      counter = 1
      Grammy.list.each do |grammy|
        puts "#{counter}." + " #{grammy.to_s}"
        counter += 1
      end
      print " >"
      choice_number = gets.chomp.to_i
      index_number = choice_number - 1
      grammy_to_delete = Grammy.list[index_number]
      Grammy.delete_grammy(index_number)
      puts "You just deleted: #{grammy_to_delete}"
      Grammy.save_list("grammy.csv")
    end
  when 4
    puts "Thanks for using the Grammys App!"
  else
    puts "Not a valid choice. Try again!"
  end
end while choice != 4








