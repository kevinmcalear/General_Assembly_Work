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
# pj.learn
# pj.hello
# pj.hello_again
#Person.learn
#Person.hello
#Person.hello_again


random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# * Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
# random_animals.each do |x|
#     x << "s"
#     puts x
# end
#random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
# * Return an array of the animals sorted alphabetically
#print random_animals.sort
# * Return an array of the animals sorted reverse alphabetically
#print random_animals.sort.reverse
# * Return an array of the animals with each individual string reversed
# random_animals.each do |x|
#     puts x.reverse
#   end
# * Return an array of the animals sorted by word length (low to high)
# array = random_animals.sort_by { |x| x.length}
# print array
# * Return an array of the animals sorted alphabetically by the last character in the string

print random_animals.sort_by {|animal| animal[-1]}




