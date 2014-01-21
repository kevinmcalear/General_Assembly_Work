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

pj = Person.new("pj")

#pj.learn # => 

#pj.hello # =>

#pj.hello_again =>

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

puts random_animals.join("s, ")
puts random_animals.sort
puts random_animals.sort { |x,y| y <=> x }
puts random_animals.reverse
puts random_animals.length.sort

random_animals.each { |animal| puts animal + "s"}
