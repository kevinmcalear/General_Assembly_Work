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

pj = Person.new("PJ")

puts pj.learn 
puts pj.hello
puts pj.hello_again 

puts Person.learn
puts Person.hello
puts Person.hello_again 



random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# * Print out a plural version of each animal on a new line(ie porpoises, camels, etc)

random_animals.select{|x| print x +"s" + " "}
#OR
more_animals = random_animals.map{|animal| + "s "}
puts more_animals
#<<<saves the new array in case you want to go back to it 

# * Return an array of the animals sorted alphabetically
random_animals.sort

# * Return an array of the animals sorted reverse alphabetically
random_animals.sort.reverse

# * Return an array of the animals with each individual string reversed
random_animals.each{|x| print x.reverse + " "}

# * Return an array of the animals sorted by word length (low to high)
random_animals.map{|e| e.length}.sort
#OR
random_animals.sort_by{|animal| animal.length}

# * Return an array of the animals sorted alphabetically by the last character in the string
random_animals.sort_by{|animal| animal[-1]}











