require_relative "lib/grammy.rb"

system "clear"

puts "============================"
puts "Welcome to the Grammy App!"
puts "============================"

begin

  puts ""
  puts "Choose wisely"
  puts " A - Add a grammy"
  puts " L - List a grammy"
  puts " D - Delete a grammy"
  puts " Q - Quit"
  puts ""

  choice = gets.chomp.downcase

  if choice == "a"
    print "Enter Year: "
    year = gets.chomp.to_i
    print "Enter category: "
    category = gets.chomp
    print "Enter winner: "
    winner = gets.chomp

    Grammys.new(year, category, winner)

  elsif choice == "l"
    grammys = Grammys.all

    if grammys.count < 1
      puts "No winners yet!"
    else
      grammys.each {|grammys| puts grammys}
    end

  elsif choice == "d"
     grammys = Grammys.all
     puts grammys.each_with_index {|val, index| puts "#{index} => #{val}"}
  elsif choice != "q"
    return "invalid option!"
end 
end while choice !="q"