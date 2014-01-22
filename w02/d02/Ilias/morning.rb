class Person

def initialize(name)
  @name = name.to_s
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

pj.hello
pj.hello_again

# random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
# animals = random_animals.map { |word| word + "s" }
# puts random_animals.sort
# puts random_animals.sort.reverse
# puts random_anmials.each { |word| word.reverse }
# puts random_animals.sort_by { |x| x.size }
# puts random_animals.sort_by { |x| x[-1] }