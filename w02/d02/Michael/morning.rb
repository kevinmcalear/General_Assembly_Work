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

pj.learn ## I'm an instance method. 
pj.hello ## I'm an instance method.
pj.hello_again ## I'm an instance method.

Person.learn ## I'm an class method.
Person.hello ## undefined methold for 'hello' for Person:Class
Person.hello_again ##undefined method for 'hello_again' for Person:Class

### Arrays, sorting, and blocks

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

##Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
random_animals_plural = random_animals.map {|animal| animal + "s"}
puts random_animals_plural

##Return an array of the animals sorted alphabetically
puts random_animals.sort 

##Return an array of the animals sorted reverse alphabetically
puts random_animals.sort.reverse

##Return an array of the animals with each individual string reversed
puts random_animals.map {|animal| animal.reverse}

##FIX: Return an array of the animals sorted by word length (low to high)
# (OLD) random_animals_length_hash = 
# (OLD) random_animals.length.map {|animal| animal.to_sym => animal.length}

puts random_animals.sort_by {|animal| animal.length}

##FIX: Return an array of the animals sorted alphabetically by the last character in the string
puts random_animals.sort_by {|animal| animal[-1]}






