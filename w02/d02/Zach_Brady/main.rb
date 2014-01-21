require_relative 'models/happitails'


# happitails = Shelter.new("Happitails", ["Miss Kitty", "Tuxedo Cat", "Henry Miller"], ["Valerie Brady"])
vb = Client.new("Valerie Brady", 59, ["Lucy Liu", "Bettina", "Jimmy", "Lily"])
miss_kitty = Animal.new("Miss Kitty", "cat", [])
tg = Animal.new("Tuxedo Cat", "cat", [])
henry = Animal.new("Henry Miller", "cat", [])
lucy = Animal.new("Lucy Liu", "cat", [])
betty = Animal.new("Battina", "cat", [])
jimmy = Animal.new("Jimmy", "cat", [])
lily = Animal.new("Lily", "cat", [])

happitails = Shelter.new("Happitails", [miss_kitty, tg, henry], [vb])

while true
  puts
  puts "Welcome to the Happitails Animal Shelter Directory. "
  puts "  - add an animal"
  puts "  - add a client"
  puts "  - quit"
  puts

  answer = gets.chomp.downcase

  case answer
    when "add an animal"
      puts "What is the animal's name? "
      name = gets.chomp
      puts "What is the animal's species? "
      species = gets.chomp.downcase
      toys = []
      puts "Does #{name} have any toys? "
      reply = gets.chomp.downcase
      if reply == "yes"
        puts "What is #{name}'s favorite toy? "
        favorite_toy = gets.chomp
        toys << favorite_toy
      end
      new_animal = Animal.new(name, species, toys)
      happitails.get_animals << new_animal
      puts "#{new_animal.get_name} was added to our shelter's database. "
      
    when "add a client"
    # add a client to the shelter
      puts "What is the client's name? "
      name = gets.chomp
      puts "What is the client's age? "
      age = gets.chomp.to_i
      pets = []
      puts "Does #{name} have any pets? "
      reply = gets.chomp.downcase
      if reply == "yes"
        # need to update to take in multiple pets
        puts "What pet does #{name} have? "
        pets = gets.chomp
      end
      new_client = Client.new(name, age, pets)
      happitails.get_clients << new_client
      puts "#{new_client.get_name} was added to our shelter's database. "
    when "quit"
      exit
    else
      puts "Come again? "
  end
end