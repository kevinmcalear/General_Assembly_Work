## All About Self

#* What happens when I call pj.learn: I'm an instance method #<Person:0x007f971a8eb580>
#* What happens when I call pj.hello: I'm an instance method #<Person:0x007f971a8eb580>
#* What happens when I call pj.hello_again: I'm an instance method #<Person:0x007f971a8eb580>

#Person.learn: I'm a class method \n  Person
#Person.hello: NoMethodError: undefined method `hello' for Person:Class
# => from (pry):27:in `__pry__'
#Person.hello_again: NoMethodError: undefined method `hello_again' for Person:Class
# => from (pry):28:in `__pry__

## Arrays, sorting & blocks
random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

#* Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
# => puts random_animals.map{|animal|animal + "s"}
#* Return an array of the animals sorted alphabetically
# => random_animals.sort
#* Return an array of the animals sorted reverse alphabetically
# => random_animals.sort.reverse
#* Return an array of the animals with each individual string reversed
# => random_animals.map{|animal|animal.reverse}
#* Return an array of the animals sorted by word length (low to high)
# => random_animals.sort_by{|animal|animal.length}
#* Return an array of the animals sorted alphabetically by the last character in the string
# => random_animals.sort_by{|animal|animal[-1]}
