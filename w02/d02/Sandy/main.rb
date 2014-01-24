
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

  def animal_list 
    return @animal_list
  end

 def add_to_animal_list
    puts "What is the animal's name?"
    name = gets.chomp
    puts "Is it a dog or a cat?"
    species = gets.chomp
    animal = Animal.new(name, species)
    # @animal_list.push(animal)
    self.animal_list().push(animal)
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
    # @client_list.push(client)
    self.client_list.push(client)
  end
end


happitails = Shelter.new("HappiTails")

def menu
    puts "Welcome to HappiTails!\n" + \
              "1. Put an animal up for adoption\n" + \
              "2. Add client\n" + \
              "3. View current client list\n" + \
              "4. View all animals\n" + \
              "5. Quit "
response = gets.chomp 
return response
end

response = menu
while response != "5"
#   case response
#   when "1"
#     happitails.add_to_animal_list 
#   when "2"
#     happitails.add_to_client_list
#   when "3"
#     puts @client_list
#   when "4"
#     puts @animal_list 
#   else
#     menu
#   end
# end
  if response == "1"
    happitails.add_to_animal_list 
  end

  if response == "2"
    happitails.add_to_client_list
  end

  if response == "3"
    happitails.client_list {|client| puts client}
  end

  if response == "4"
    happitails.animal_list{|animal| puts animal}
  end

  menu
end


