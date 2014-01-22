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
pj.learn
pj.hello
pj.hello_again

puts ""

Person.learn
#Person.hello
#Person.hello_again



random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

random_animals.each{ |animal| puts "#{animal}s"}

puts random_animals.sort
puts random_animals.sort.reverse

random_animals.each{ |animal| puts animal.reverse}

puts "sort by length"
puts random_animals.sort{ |x,y| x.length <=> y.length}
puts "sort alphabetically by last"
puts random_animals.sort {|x,y| x[x.length-1] <=> y[y.length-1]}