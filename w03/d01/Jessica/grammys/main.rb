require_relative "lib/grammys"


Grammy.read_all("grammys.csv")

begin

  puts "Choose option..."  
  puts " A - Add new Grammy."
  puts " L - List all Grammys."
  puts " D - Delete a Grammy."
  puts " Q - Quit!"


  choice = gets.chomp.downcase
    case choice
      when "a"
      puts "Year:"
      year = gets.chomp.to_i
      puts "Category:"
      category = gets.chomp
      puts "Winner:"
      winner = gets.chomp
      Grammy.new(year, category, winner)
      Grammy.save_all("grammys.csv")
    when "l"
    grammys = Grammy.all
    if grammys.count < 1
      puts "No grammys yet!"
    else  
      grammys.each {|grammy| puts grammy}
    end
    when "d"
      grammys = Grammy.all
      grammys.each_with_index {|key, value| puts "#{key} > #{value}"}
      puts "Which entry would you like to delete:"
      winner = gets.chomp.to_i
      Grammy.delete_at(winner)
      Grammy.save_all("grammys.csv")
    else
      puts "Error"
    end
    
    end while choice != "q"

