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

  def adopt_animal(animal)
    self.pets << animal
    return "#{self.name}'s pets now are: #{self.print_pets_list}"
  end

  def return_pet(pet)
    self.pets.delete(pet)
  end

  def print_pets_list
    a = self.pets.map {|pet| pet.name}
    return "{#{a.join(", ")}}"
  end

  def get_which_pet
    puts "Please select which pet:"
    puts self.print_pets_list
    animal_name = gets.chomp
    return self.pets.find {|anim| anim.name == animal_name}
  end
  
end


class CatLady < Client
  def adopt_animal(animal)


  end

  def cat_lady?
    return true
  end
end



