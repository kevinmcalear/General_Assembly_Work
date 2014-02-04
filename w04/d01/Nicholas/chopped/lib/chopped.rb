# require libraries
require 'pry'
require 'active_record'
require_relative 'chopped/chef'
require_relative 'chopped/judge'
require_relative 'chopped/dish_rating'
require_relative 'chopped/dish'
require_relative 'chopped/course'
require_relative 'chopped/chopping_block'

# require our code
Dir[File.join(File.dirname(__FILE__), 'chopped', '*.rb')].each {|file| require file } 

# Configure Active Record
ActiveRecord::Base.logger = Logger.new("./sql.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "nicholasbundy",
  :password => "",
  :database => "chopped"
)


puts `clear`
choice = 0 
while choice != 10

  puts "---------------------------------"
  puts "        CHOPPED MENU"
  puts ""
  puts " (1) List all Chefs"
  puts " (2) Add a new Chef"
  puts " (3) List all Judges"
  puts " (4) Add a new Judge"
  puts " (5) Create new Course"
  puts " (6) Create new Dish"
  puts " (7) Give a Dish a Rating"
  puts " (8) View Chopping Block"
  puts " (9) View Course Winners"
  puts " (10) Quit"
  puts ""
  puts "------------------------------------"

  print "Enter a menu option: "
  choice = gets.chomp.to_i
  puts `clear`

  if choice == 1
    puts "---------------------------"
    puts "      List of Chefs"
    Chef.all.each {|chef| puts "#{chef.id}. #{chef.name}"}
    puts "---------------------------"

  elsif choice == 2

    puts "Enter a name for a new Chef: "
    name = gets.chomp

    create_chef = Chef.create(name: name)
    puts "New Chef Created!"

  elsif choice == 3

    puts "---------------------------"
    puts "      List of Judges"
    Judge.all.each {|judge| puts "#{judge.id}. #{judge.name}"}
    puts "---------------------------"


  elsif choice == 4

    puts "Enter a name for a new Judge: "
    name = gets.chomp

    create_judge = Judge.create(name: name)
    puts "New Judge Created!"

  elsif choice == 5

    puts "What round is this course: "
    round = gets.chomp.to_i
    puts "What is the featured ingredient? "
    ingredient = gets.chomp

    create_course = Course.create(round: round, ingredient: ingredient)
    puts "New Course Created!"

  elsif choice == 6
    
    puts "What is the name of the dish? "
    name = gets.chomp
    puts "What course round will this dish be in? "
    round = gets.chomp.to_i
    puts "Which chef is making this dish? "
    chef_search = gets.chomp
    chef = Chef.find_by(name: chef_search)

    create_dish = Dish.create(name: name, course_id: round, chef_id: chef.id)
    puts "New Dish Created!"

  elsif choice == 7
    
    puts "---------------------------"
    puts "      List all Dishes"
    Dish.all.each {|dish| puts "#{dish.id}. #{dish.name}"}
    puts "---------------------------"

    puts "What is the number of the dish to rate? "
    dish_id = gets.chomp.to_i
    puts "Which judge is giving the rating? "
    judge = gets.chomp
    judge_search = Judge.find_by(name: judge)
    puts "Please give a rating between 1 and 5: "
    rating = gets.chomp.to_i

    creating_rating = Dish_rating.create(score: rating, dish_id: dish_id, judge_id: judge_search.id )
    puts "Rating Created!"


  elsif choice == 8
    least = Dish_rating.all.each {|number| number.score.min }
    self.Create(course_id: least.course_id, chef_id: least.chef_id)

    puts "---------------------------"
    puts "    View Who is on the Chopping Block"
    Chopping_block.all.each {|chop| puts "#{chop.id}. #{chop.chef_id.name}"}
    puts "---------------------------"

  elsif choice == 9
  
end

end