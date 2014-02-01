class Client
  def initialize(name, age)
    #initialize name, age
    @name = name
    @age = age

    #initialize empty pets array
    @pets = []
  end

  def name
    return @name
  end

  def age
    return @age
  end

  def pets
    return @pets
  end

  def client_info
    return "#{self.name}, age: #{self.age},\nPets owned:\n#{self.print_pets_list}\n"
    # end
  end

  def print_pets_list
    return "#{(self.pets.map {|pet| pet.animal_info}).join("\n")}"
  end

  def get_which_pet
    puts "Please select which pet by name:"
    puts self.print_pets_list
    animal_name = gets.chomp
    return self.pets.find {|anim| anim.name == animal_name}
  end

  def adopt_animal(animal)
    self.pets << animal
    return "Success! #{self.name}'s pets now are:\n#{self.print_pets_list}"
  end

  def return_pet(pet)
    self.pets.delete(pet)
    return "Successful return!\n#{self.name}'s pets now are:\n#{self.print_pets_list}"
  end
  
end


class CatLady < Client
  def adopt_animal(animal)
    if animal.species != "cat"
      puts "Only cats allowed for this client please and thank you!"
    else
      adopt_animal(super)
    end
  end

  def client_info
    return "#{self.name}, age: #{self.age},\nPets owned:\n#{self.print_pets_list}\n#{self.name} is a cat lady.\n"
  end
end



