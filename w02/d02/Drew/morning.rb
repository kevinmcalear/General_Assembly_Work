random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]


more_animals = random_animals.map {|animal| animal + "s"}
puts more_animals
puts random_animals.sort
puts 
puts random_animals.sort.reverse
puts
puts random_animals.each {|animal| animal.reverse}
puts
puts random_animals.sort_by {|animal| animal.length}
puts
puts random_animals.sort_by {|animal| animal[-1]}