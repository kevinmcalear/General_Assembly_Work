def create_animal(shelter)
  animal_hash = Hash.new
  puts "What is the animal's name?"
  name = gets.chomp
  animal_hash[:name] = name

  puts "What is the animal's species"
  species = gets.chomp
  animal_hash[:species] = species

  puts "Does #{name} have any toys?  Enter the toys separated by commas."
  toys = gets.chomp
  animal_hash[:toy] = toys.split(",")

  animal = Animal.new(name, species)
  shelter.create_animals_array(animal_hash)
end

def create_client(shelter)
  person_hash = Hash.new
  puts "What is the person's name"
  name = gets.chomp
  person_hash[:name] = name

  puts "What is the person's age (Please enter a number)"
  age = gets.chomp
  person_hash[:age] = age
end 

def display(shelter,type)
  if type == "animals"
    shelter.animals.each {|name| puts name [:name]}       
  else type == "clients"
    shelter.animal.each {|client| puts client [:name]}
  end 
end

