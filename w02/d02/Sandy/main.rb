class Animal
  def initialize(name, species)
    @name = name
    @species = species
    @toys = []
  end

  def name
    return @name
  end

  def species 
    return @species = species
  end 

  def toys
    @toys = toys 
  end

  def toys
    return @toys
  end
end 

class Client
  def initialize(name, age)
    @name = name
    @age = age
    @family_pets = []
  end

  def name 
    return @name
  end

  def age
    return @age
  end

  def family_pets  ##connect to class Animal
    @family_pets = family_pets
  end

  def family_pets
    return @family_pets
  end
end

class Shelter
  def initialize(name)
    @name = name
    @animal_list= []
    @client_list=[]
  end

  def name
    return @name
  end

  def animal_list #this should somehow access class Animals
    @animal_list = animal_list 
  end

  def animal_list 
    return @animal_list
  end

 def add_to_animal_list
    puts "What is the animal's name?"
    name = gets.chomp
    puts "Is it a dog or a cat?"
    species = gets.chomp
    animal = Animal.new(name, species)
    self.animal().push(animal_list)
  end

  def client_list 
    @client_list = client_list
  end

  def client_list
    return @client_list
  end

  def add_to_client_list 
    puts "What is your name?"
    name = gets.chomp
    puts "How old are you?"
    age = gets.chomp
    client = Client.new(name, age)
    self.client().push(client_list)
end


happitails = Shelter.new("HappiTails")

puts "Welcome to HappiTails!
          1. Put an animal up for adoption
          2. Add client
          3. Quit "
response = gets.chomp 





