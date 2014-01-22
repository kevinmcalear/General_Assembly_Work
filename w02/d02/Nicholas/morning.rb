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

Person.learn
#Person.hello - undefined method because self is not called in the method
#Person.hello_again - undefined method because self is not called


random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
#random_animals.map {|animal| puts animal + "s"}
#random_animals.sort
#random_animals.sort.reverse
#random_animals.map {|animal| puts animal.reverse}
#random_animals.sort_by {|animal| animal.length}
random_animals.sort_by {|animal| animal[-1]}