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

pj = Person.new("Pj")

# puts pj.learn
# puts pj.hello
# puts pj.hello_again

# puts Person.learn
# puts Person.hello
# puts Person.hello_again


random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

puts random_animals.map {|animal| animal + "s"}
puts
puts
puts random_animals.sort
puts
puts
puts random_animals.sort { |first, second| second <=> first }
puts
puts
puts random_animals.map {|animal| animal.reverse}
puts
puts
puts random_animals.sort_by {|animal| animal.length}
puts
puts
puts random_animals.sort_by {|animal| animal[-1]}




















