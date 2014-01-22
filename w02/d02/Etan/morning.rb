require 'pry'
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

PJ = Person.new("PJ")

PJ.learn
PJ.hello
PJ.hello_again

Person.learn
Person.hello
Person.hello_again

=begin
random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

#1 

puts random_animals.map {|animal| animal << "s"}


#2 

puts random_animals.sort

#3 

puts random_animals.sort.reverse

#4 

puts random_animals.map{|animal| animal.reverse}

#5 

puts random_animals.sort_by {|animal| animal.length}

#6

puts random_animals.sort_by {|animal| animal[-1]}


=end