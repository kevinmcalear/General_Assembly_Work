require_relative "lib/grammys.rb"

Grammys.load_all("grammys.csv")

while true

  puts puts puts

  puts "1. Add a Grammy"
  puts "2. List all Grammys"
  puts "3. Delete a Grammy"
  puts "4. Quit"

  choice = gets.chomp.to_i

  case choice
  when 1
    print "year: "
    year = gets.chomp.to_i
    print "winner: "
    winner = gets.chomp
    print "category: "
    category = gets.chomp

    Grammys.new(year, winner, category)

    Grammys.save_all("grammys.csv")
  when 2
    Grammys.list_all
  when 3
    Grammys.list_all
    puts "Deletion number? "
    Grammys.delete(gets.chomp.to_i-1)
  else
    break
  end

end