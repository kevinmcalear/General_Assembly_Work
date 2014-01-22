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

pj = Person.new("PJ") #=>=> #<Person:0x007ff03a0ece00 @name="PJ">

pj.learn #=>I'm an instance method 
#<Person:0x007ff03a0ece00> 
#=> nil
pj.hello #I'm an instance method
#<Person:0x007ff03a0ece00>
#=> nil

pj.hello_again #I'm an instance method
#<Person:0x007ff03a0ece00>
#=> nil

Person.learn #I'm a class method
#Person
#=> nil

#Person.hello #NoMethodError: undefined method `hello' for Person:Class
#from (pry):113:in `__pry__'

# Person.hello_again #NoMethodError: undefined method `hello_again' for Person:Class
#from (pry):114:in `__pry__'



randimals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

plural_animals = randimals.map {|animal| animal + "s"}

puts "#{plural_animals}"
puts "#{randimals.sort}"
puts "#{randimals.sort.reverse}"

backward_animals = randimals.map {|animal| animal.reverse}

puts "#{backward_animals}"

long_named_animals = randimals.sort_by do |animal| 
  x = animal.length
  end

puts "#{long_named_animals}"

odd_alhpa_animals = randimals.sort_by {|animal| animal[-1]}

puts "#{odd_alhpa_animals}"


