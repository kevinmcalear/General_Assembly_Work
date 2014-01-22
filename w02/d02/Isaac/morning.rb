# ## Arrays, sorting & blocks

random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# * Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
plural_version = random_animals.map do |animal|
  animal + "s"
end
puts plural_version
puts

# * Return an array of the animals sorted alphabetically
abc_animals = random_animals.sort 
puts abc_animals
puts

# * Return an array of the animals with each individual string reversed

reversed_animals = random_animals.map do |animal|
  animal.reverse
end
puts reversed_animals
puts

# * Return an array of the animals sorted reverse alphabetically

abc_animals_reverse = abc_animals.reverse
puts abc_animals_reverse
puts

# * Return an array of the animals sorted by word length (low to high)

animals_sorted_length = random_animals.sort_by do |animal|
  animal.length
end
puts animals_sorted_length


# * Return an array of the animals sorted alphabetically by the last character in the string

random_animals.sort_by {|animal| animal[-1]}






