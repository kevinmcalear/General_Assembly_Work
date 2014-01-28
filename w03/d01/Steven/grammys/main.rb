 require_relative "lib/grammys.rb"

Grammy.read_all("grammys.csv")

puts "------------------------------------"
puts "Oh Hey! It's a big list of Grammys!"
puts "Please choose from the following options"

begin 

puts "1 - Add A Grammy"
puts "2 - List All Grammys"
puts "3 - Delete A Grammy"
puts "4 - Quit"

choice = gets.chomp.to_i


  if choice == 1
    puts "What is the grammy category?"
    category = gets.chomp
    puts "What is the year?"
    year = gets.chomp.to_i
    puts "Who was the winner?"
    winner = gets.chomp

    Grammy.new(category, year, winner)
    Grammy.save_all("grammys.csv")

  elsif choice == 2
    grammys = Grammy.all

    if grammys.count < 1
      puts "Add more Grammys!"
    else 
      grammys.each {|grammy| puts grammy}
    end

  elsif choice == 3
    puts "Which grammy would you like to delete?(enter the #)"
    grammys = Grammy.all
    grammys.each_with_index {|val, index| puts "#{index} => #{val}"}
    delete_choice = gets.chomp.to_i
    #grammys.delete_at(delete_choice)
    Grammy.delete_at(delete_choice)
    Grammy.save_all("grammys.csv")

  end

  end while choice != 4