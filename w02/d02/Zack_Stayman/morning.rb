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

# def hello_again
#   learn
# end

end

pj = Person.new("PJ")

puts pj.learn
puts pj.hello
# puts pj.hello_again

Person.learn
# Person.hello_again
# Person.hello

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
=begin
* Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
* Return an array of the animals sorted alphabetically
* Return an array of the animals sorted reverse alphabetically
* Return an array of the animals with each individual string reversed
* Return an array of the animals sorted by word length (low to high)
* Return an array of the animals sorted alphabetically by the last character in the string
=end

random_animals.each do |animal|
  puts animal + "s"
end

puts "\n"

puts random_animals.sort

puts "\n"

puts random_animals.sort.reverse

puts "\n"

random_animals.each do |animal|
  puts animal.reverse
end

puts "\n"

puts random_animals.sort {|animal1,animal2| animal1.length <=> animal2.length}

puts "\n"

puts random_animals.sort {|animal1,animal2| animal1[-1,1] <=> animal2[-1,1]}

