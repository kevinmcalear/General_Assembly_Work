# require libraries
require 'pry'
require 'active_record'

# require our code
Dir[File.join(File.dirname(__FILE__), 'chopped', '*.rb')].each {|file| require file } 

# Configure Active Record
ActiveRecord::Base.logger = Logger.new("./sql.log")

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "dmitryjum",
  :password => "",
  :database => "chopped"
)


puts "WELCOME TO CHOPPED!"

# add some chefs
chef1 = Chef.create({name: "James"})
chef2 = Chef.create({name: "PJ"})
chef3 = Chef.create({name: "Dima"})
chef4 = Chef.create({name: "Kevin"})

# add some judges
...


puts "Let's meet the chefs!"

# print out the chefs
Chef.all.each do |chef|
  puts chef.name
end

puts "Welcome chefs!"
# explain the rules (if necessary)

# start the round!
round_one = Course.create({round: 1, ingredient: "fish"})

puts "Chefs! Open your baskets!"

# print out the ingredient for Round 1
puts "The ingriedient for round #{round_one.round} is #{round_one.ingredient}!"

puts "Time starts now!"
# chefs make dishes
dish1 = chef1.make_dish(round_one, "Some kind of dish with fish")
chef2.make_dish(round_one, "Fish kebabs")
chef3.make_dish(round_one, "Grilled salmon")
chef4.make_dish(round_one, "Tuna tartar")

# commercial break

puts "Time's up! Plesae step back!"

# present chef 1's dish to judges
puts "Let's take a look at: #{chef1.dishes.last.name}!"


# judges rate that dish
judge

# present second chef's dish to judges
# judges rate that dish

# present third chef's dish to judges
# judges rate that dish

# present fourth chef's dish to judges
# judges rate that dish

# commerical break!!!!!!!!

# say which dish is chopped
round_one.chop!

#puts "Chef #{chef_name}, you have been chopped!"

# chop the chef

# start round 2 ...