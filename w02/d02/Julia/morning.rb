class Person

def initialize(name)
  @name = name
end

def self.learn
  puts "I'm a class method"
  puts self
end

def learn
  puts "I'm an instance method"
  puts self
end

def hello
  self.learn
end

def hello_again
  learn
end

end

=begin
Create a new Person object and store it in the variable `pj`. Print the following to the console / see what it returns in pry
* What happens when I call pj.learn – I'm an instance method
* What happens when I call pj.hello _ I'm an instance method
* What happens when I call pj.hello_again – I'm an instance method


Print the following to the console / see what it returns in pry
* What happens when I call Person.learn – I'm a class method
* What happens when I call Person.hello - NoMethodError: undefined method `hello' for Person:Class
* What happens when I call Person.hello_again - NoMethodError: undefined method `hello_again' for Person:Class

=end

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]


#* Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
random_animals.map {|animal| animal + "s"}
#* Return an array of the animals sorted alphabetically
random_animals.sort
#* Return an array of the animals sorted reverse alphabetically
random_animals.sort.reverse
#* Return an array of the animals with each individual string reversed
random_animals.map {|animal| animal.reverse}
#* Return an array of the animals sorted by word length (low to high)
sorted_by_length = random_animals.sort_by! do|animal| 
  animal.length
end
#* Return an array of the animals sorted alphabetically by the last character in the string
random_animals.sort_by! {|animal| animal[-1]}






