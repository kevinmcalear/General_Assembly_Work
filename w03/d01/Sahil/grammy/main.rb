require_relative "lib/grammy.rb"

choice = nil

while (choice != "q")
  puts "Main Menu:"
  puts "Add a grammy (a)"
  puts "List all grammys (l)"
  puts "Delete grammy at index (d)"
  puts "Quit (q)"

  choice = gets.chomp

  case choice
   when "a"
    puts "Year?"
    year = gets.chomp
    puts "Category?"
    category = gets.chomp
    puts "Winner?"
    winner = gets.chomp
    Grammy.new(year,category,winner)
   when "l"
    puts Grammy.list
   when "d"
    puts "Select an index"
    grammy_array = Grammy.grammys
    grammy_array.each_with_index do |gram, index|
      puts index.to_s + ": " + gram.to_s
    end
    index = gets.chomp.to_i
    grammy_array.delete_at(index)
    Grammy.grammys=(grammy_array)
  end
end