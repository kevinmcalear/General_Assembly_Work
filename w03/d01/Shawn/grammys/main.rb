require_relative "lib/grammys.rb"
FILE_PATH = "grammys.csv"


system "clear"

puts "__________________________________"
puts "Welcome to the GRAMMYs Listing App"
puts "__________________________________"

Grammy.read_all(FILE_PATH)


begin

  puts ""
  puts "Please choose from the options below:"
  puts "A - Add a GRAMMY."
  puts "L - List all GRAMMYs."
  puts "D - Delete a GRAMMY."
  puts "Y - List all GRAMMYs from a given year."
  puts "C - List all GRAMMYs according to category."
  puts "Q - Quit."
  puts ""
  print ">"

  choice = gets.chomp.downcase

  if choice == "a"
    print "Enter Year: "
    year = gets.chomp
    print "Enter Category: "
    category = gets.chomp
    print "Enter Winner: "
    winner = gets.chomp

    Grammy.new(year, category, winner)
    Grammy.save_all(FILE_PATH)

  elsif choice == "l"
    grammys = Grammy.all 

    if grammys.count < 1
      puts "No GRAMMYs yet"
    else
      grammys.each {|grammy| puts grammy }
    end

  elsif choice == "d"
    i = 0
    grammys = Grammy.all
    while i < Grammy.all.count
      puts "Please specify the index of which GRAMMY you'd like to delete:"
      puts "#{i}: #{grammys[i].to_s}"
      i += 1
    end
    index = gets.chomp.to_i
    Grammy.delete_grammy(index)
    Grammy.save_all(FILE_PATH)

  elsif choice == "y"
    grammys = Grammy.all
    puts "Which year would you like to check out?"
     grammys.each {|grammy| puts grammy.year}
     year_win = gets.chomp

     #if grammys.each.include?(year_win)
         Grammy.list_all_year(year_win)

    elsif choice == "c"
      grammys = Grammy.all
      puts "Which category would you like to check out?"
      grammys.each {|grammy| puts grammy.category }
      category_win = gets.chomp

      if grammys.include?(category_win)
        categorical_wins = Grammy.list_all_category(category_win)
        puts categorical_wins
      else
        puts "Invalid category..."
      end

  elsif choice != "q"
    "Invalid option..."
  end

end while choice != "q"