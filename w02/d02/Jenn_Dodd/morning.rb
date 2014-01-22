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

# puts pj.learn
# puts pj.hello
# puts pj.hello_again

# Person.learn
# Person.hello
# Person.hello_again


puts 
puts "Rando animal time!!"
puts


random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

puts "---------VVVVVVV plural animals"
more_animals = random_animals.map {|animal| animal + "s"}
puts more_animals

puts "---------VVVVVVV sorted alphabetical"
sorted_animals = random_animals.sort
puts sorted_animals

puts "---------VVVVVVV reverse animals"
reverse_sorted_animals = random_animals.sort {|a, b| b <=> a}
puts reverse_sorted_animals

puts #OR
reverse_sorted_animals = random_animals.sort.reverse
puts reverse_sorted_animals

puts "---------VVVVVVV reverse each string"
backwards_animals = random_animals.map {|animal| animal.reverse}
puts backwards_animals

puts "---------VVVVVVV sort by word length"
length_animals = random_animals.sort { |x, y| x.length <=> y.length}
puts length_animals

puts #OR

random_animals.sort_by {|animal| animal.length}


#alphabetically by last character
puts "---------VVVVVVV alphabetical last letter"
last_character = random_animals.sort { |x, y| x[-1] <=> y[-1]}
puts last_character

puts #or

random_animals.sort_by {|animal| animal[-1]}




