require 'pry'



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
    @name = name
    @age = age
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
    return "#{name} who is #{age} years old."
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
  puts "3: Create a shelter"
  puts "4: List animals"
  puts "5: List clients"
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
    puts
  when 4
    sample_shelter.animal_list.each do |animal|
      puts animal
    end
  when 5
   sample_shelter.client_list.each do |client|
      puts client
    end
  else
    puts "You're typing things that don't make sense. Get your head checked."
  end
  puts "Press enter to continue"  
  gets
  menu_choice = menu
end




