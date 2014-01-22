#require_relative = "seeds.rb"



##Animal Class

class Animal

  def initialize(animal_name, animal_species)
    @animal_name = animal_name
    @animal_species = animal_species
  end

  def animal_name
    return @animal_name
  end

  def animal_species
    return @animal_species
  end

  def to_user
    return "You've just created a #{animal_species} with the name of #{animal_name}."
  end
  def to_s
    return "#{animal_name}, who is a(n) #{animal_species}."
  end
end

##Client Class

class Client

  def initialize(name, age)
    
    @adopted_animals = []

    @name = name
    @age = age
  end

  def adopted_animals
    return @adopted_animals
  end

  def name
    return @name
  end

  def age
    return @age
  end

  def to_user
    return "You've just created client #{name} who is #{age} years old."
  end

  def to_s
    return "#{name} who is #{age} years old. Pets, if any: #{adopted_animals}."
  end
end

##Shelter Class

class Shelter

  def initialize(name)

    @client_list = []
    @animal_list = []

    @name = name
  
  end

  def name
    return @name
  end

  def animal_list
    return @animal_list
  end

  def client_list
    return @client_list
  end

  def add_client
    puts "What is the client's name?"
    client_name = gets.chomp

    puts "What is the client's age?"
    client_age = gets.chomp

    new_client = Client.new(client_name, client_age)
    puts new_client.to_user
    self.client_list().push(new_client)
  end

  def add_animal
    puts "What is the animal's name?"
    animal_name = gets.chomp
    puts "What species of animal is it?"
    animal_species = gets.chomp

    new_animal = Animal.new(animal_name, animal_species)
    puts new_animal.to_user
    self.animal_list().push(new_animal)

  end

end

##Seeded Datas


sample_shelter = Shelter.new("Super Daycare")
#bear = sample_shelter.add_animal.new_animal("Socrates", "Bear")
#giraffe = sample_shelter.add_animal.new_animal("Plato", "Giraffe")
#etan = sample_shelter.add_client.new_client("Etan", 26)



##Program Menu

def menu
  puts `clear`
  puts "*"
  puts "**"
  puts "***"
  puts "****"
  puts "*****"
  puts "******"
  puts " "
  puts "1: Create an animal"
  puts "2: Create a client"
  puts "3: List animals"
  puts "4: List clients"
  puts "5: Adopt an animal!"
  puts "6: :( Give your pet up for adoption."
  puts " "
  puts "9: Quit program and be a jerk!"
  puts " "
  puts "******"
  puts "*****"
  puts "****"
  puts "***"
  puts "**"
  puts "*"
  response = gets.chomp.to_i
  return response
end

##Program Start

menu_choice = menu

while menu_choice != 9
  case menu_choice
  when 1
    sample_shelter.add_animal
  when 2
    sample_shelter.add_client
  when 3
    sample_shelter.animal_list.each do |animal|
      puts animal
    end
  when 4
   sample_shelter.client_list.each do |client|
      puts client
    end
  when 5
    puts "Which animal would you like to adopt?"
    sample_shelter.animal_list.each do |animal|
      puts animal
    end

    animal_select_choice = gets.chomp

    animal_selected = sample_shelter.animal_list.find do |animal| 
      animal.animal_name == animal_select_choice
    end


    puts "You have selected #{animal_selected} for adoption. Congratulations! Now who is adopting #{animal_selected.animal_name}?"
    sample_shelter.client_list.each do |client|
      puts client
    end

    client_select_choice = gets.chomp

    client_selected = sample_shelter.client_list.find do |client|
      client.name == client_select_choice
    end

    client_selected.adopted_animals << animal_selected

    puts "#{client_selected.name} is now the proud owner of #{animal_selected.animal_name}!"

    sample_shelter.animal_list.delete(animal_selected)

  when 6
    puts
  when 8
    puts 

  else
    puts "You're typing things that don't make sense. Get your head checked."
  end
  puts "Press enter to continue"  
  gets
  menu_choice = menu
end




