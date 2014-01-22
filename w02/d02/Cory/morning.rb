
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
 #Person.hello  #generates error because hello is a method on an instance not a class
 #Person.hello_again #same as above

 random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

puts random_animals.map! {|x| x + "s"}
print random_animals.sort
print random_animals.sort.reverse 
print random_animals.map {|x| x.reverse} 
print random_animals.sort_by {|x| x.length}
print random_animals.sort_by {|x| x[-1]}
