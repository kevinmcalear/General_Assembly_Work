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




random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# * Print out a plural version of each animal on a new line(ie porpoises, camels, etc)

puts random_animals.map {|animal| animal + "s"}
puts

# * Return an array of the animals sorted alphabetically
puts random_animals.sort
puts

# * Return an array of the animals sorted reverse alphabetically
puts random_animals.sort.reverse
puts

# * Return an array of the animals with each individual string reversed
puts random_animals.map { |animal| animal.reverse}
puts

# * Return an array of the animals sorted by word length (low to high)
puts random_animals.map { |animal| animal.length}.sort
puts random_animals.sort_by {|animal| animal.length}
puts

# * Return an array of the animals sorted alphabetically by the last character in the string
puts random_animals.sort_by {|animal| animal[-1]}
puts
