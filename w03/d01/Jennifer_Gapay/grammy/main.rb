require_relative "lib/grammy.rb"

system "clear"

puts "X--------------------------------------X"
puts "X            Welcome to the GRAMMY App           X"
puts "X--------------------------------------X"

Grammy.read_all("grammy.csv")

begin

  puts ""
  puts "Choose your nominee"
  puts "A - Add a Grammy Nominee"
  puts "L - List all Grammy Nominees"
  # puts "D - Delete a Grammy"
  puts "Q - Quit!"
  puts ""
  print " > "

  choice = gets.chomp.downcase

  if choice == "a"
  print "Add your Grammy Artist:"
  name = gets.chomp 
  print "What year were they nominated?"
  year = gets.chomp.to_i
  print "What category are they in?"
  category = gets.chomp
  print "Did they win?"
  winner = gets.chomp

  Grammy.new(name, year, category, winner)

  Grammy.save_all("grammy.csv")

elsif choice == "l"
  list = Grammy.all

  if grammy.count < 1
    puts "No Grammy nominees entered yet.  Add one!"
  else
    grammy.each {|grammy| puts grammy}
  end

elsif choice != "q"

  puts "Please try again"
end

end while choice != "q"