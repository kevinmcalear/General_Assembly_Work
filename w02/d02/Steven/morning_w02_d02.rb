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

pj = Person.new("pj")

#* What happens when I call pj.learn
"i'm an instance method"
#* What happens when I call pj.hello
"I'm an instance method"
#* What happens when I call pj.hello_again
"I'm an instance method"

#What happens when I call Person.learn
"I'm a class method"
#What happens when I call Person.hello
undefined method?
#What happens when I call Person.hello_again
undefined method?

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

#* Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
random_animals.each {|animal| puts animal + "s"}

or
more_animals = random_animals.map{|animal| puts animal + "s"}
# * Return an array of the animals sorted alphabetically
random_animals.sort
# * Return an array of the animals sorted reverse alphabetically
random_animals.sort{|x,y|y<=>x}
.sort.reverse
# * Return an array of the animals with each individual string reversed
random_animals.each {|animal| puts animal.reverse}
# * Return an array of the animals sorted by word length (low to high)
random_length.sort = random_animals.map{|animal| animal.length}
random_length.sort

random_animals.sort_by {|animal| animal.length}
# * Return an array of the animals sorted alphabetically by the last character in the string
random_animals.sort_by {|animal| animal[-1]}

